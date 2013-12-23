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
PImage sleigh;
Raindrop[] r = new Raindrop[200];
Coal[] c = new Coal[200];
Catcher catcher;

void setup() {
  size(600, 500);
  //this loads the image that goes behind score
  sleigh = loadImage("sleigh.png");
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  for (int i = 0; i < c.length; i++) {
    c[i] = new Coal();
  } 
  catcher = new Catcher();
  run = false;
  flash = false;
}

void draw() {
  background(0);
  if ( run == true) {
    fill(0);
    textSize(30);
    fill(255);
    //this displays the score
    image(sleigh, 30, height/15 , 150, 150);
    text(score, 143, height/5);
    //this says that if the score is 10 points, you win. 
    if (score >= 10) {
      fill(255);
      textAlign(CENTER);
      text("you win!", width/2, height/4);
      text("play again", width/2, height/2);
    }
    //this says that if the score is -5 points, you lose.
    if (score <= -5) {
      fill(255);
      textAlign(CENTER);
      text("you lose!", width/2, height/4);
      text("play again", width/2, height/2);
    }
    current = millis();
    change = current - old;
    for (int i = 0; i < index; i++) {
      r[i].display();
      r[i].drop();
      c[i].display();
      c[i].drop();
      catcher.catchDrop(r[i]);
      catcher.catchDrop(c[i]);
    }
    //this allows the raindrops to fall at an interval of 2 seconds
    if (change >= 2000) {        
      old = current;

      if (index < r.length) {
        index++;
      }
      if (index < c.length) {
        index++;
      }
    }
    catcher.display();
    catcher.update();
  }
  //this is the start screen
  else {
    textSize(15);
    fill(255);
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
//this says that if you press any key, the game starts
void keyPressed() {
  run = true;
}
//this says that if you click where "play again" is displayed (after you win or lose), a new game will begin
void mousePressed() {
  if (mouseX <= width/2 && mouseX >= width/4 && mouseY <= height/2 && mouseY >= height/4 && score >= 10 || score<=-5) {
    score = 0;
  }
}

