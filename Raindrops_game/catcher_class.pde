class Catcher {
  PVector loc;
  int d;

  Catcher() {
    //this makes the catcher follow the mouse
    loc = new PVector(mouseX, height-d);
    d = 30;
  }

  void display() {
    fill(255, 31, 214);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    loc.set(mouseX, height-d);
  }
  void catchDrop(Raindrop drop) {
    //this means the catcher catches the raindrop, and the score increases by 1
    if (loc.dist(drop.loc) < d/2+drop.d/2) {
      drop.loc.set(-width,height*10);
      score++;
    }
  }
}
