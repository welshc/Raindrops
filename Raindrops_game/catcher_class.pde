class Catcher {
  PVector loc;
  int d;
  int x= width/2;

  Catcher() {
    //this makes the catcher follow the mouse
    loc = new PVector(x, height-d);
    d = 30;
  }
  void display() {
    fill(255, 31, 214);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        loc.x--;
      }
      if (keyCode == RIGHT) {
        loc.x++;
      }
    }
    loc.x = constrain(loc.x, 0, width);
  }
  
  void catchDrop(Raindrop drop) {
    //this means the catcher catches the raindrop, and the score increases by 1
    if (loc.dist(drop.loc) < d/2+drop.d/2) {
      drop.loc.set(-width, height*10);
      score++;
    }
  }
}

