boolean run;
int score = 0;
int old = 0;
int current = 0;
int change = 0;
int index = 1;
int flashold = 0;
int flashcurrent = 0;
int flashchange = 0;
boolean flash;

Bad_raindrop[] b = new Bad_raindrop[200];
Raindrop[] r = new Raindrop[100];
Catcher catcher;

void setup() { 
  size(300, 500);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Bad_raindrop();
  } 
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  catcher = new Catcher();
  run = false;
  flash = false;
}

void draw() {
  background(0);
  if ( run == true) {
    fill(0);
    textSize(50);
    fill(210, 255, 13);
    //this displays the score
    text(score, width/2, height/10);

    current = millis();
    change = current - old;
    for (int i = 0; i < index; i++) {
      b[i].display();
      b[i].drop();
      r[i].display();
      r[i].drop();
      catcher.catchDrop(r[i]);
      catcher.catchDrop(b[i]);
    }
    //this says that if the score is 10 points, you win. 
    if (score >= 10) {
      fill(210, 255, 13);
      textAlign(CENTER);
      text("you win!", width/2, height/4);
      text("play again", width/2, height/2);
    }
    //this says that if the score is -5 points, you lose.
    if (score <= -5) {
      fill(210, 255, 13);
      textAlign(CENTER);
      text("you lose!", width/2, height/4);
      text("play again", width/2, height/2);
    }
    //this allows the raindrops to fall at an interval of 2 seconds
    if (change >= 1000) {        
      old = current;

      if (index < r.length) {
        index++;
      }
    }
    catcher.display();
    catcher.update();
  }
  else {
    textSize(15);
    fill(210, 255, 13);
    flashcurrent = millis();
    flashchange = flashcurrent - flashold;
    if (flashchange >= 1000) {        
      flash = true;
    }
    if (flash == true) {
      text("[PRESS ANY KEY TO START]", width/5, height/2);
    }
  }
}
//this says that if you click where "play again" is displayed (after you win), a new game will begin
void keyPressed() {
  run = true;
}

void mousePressed() {
  if (mouseX <= width/2 && mouseX >= width/4 && mouseY <= height/2 && mouseY >= height/4 && score >= 10 || score <= -5) {
    score = 0;
  }
}

