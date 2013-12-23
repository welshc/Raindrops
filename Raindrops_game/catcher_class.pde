class Catcher {
  PVector loc;
  int d;
  int x= width/2;
  PImage bag;

  Catcher() {
    //this makes the catcher follow the mouse
    loc = new PVector(x, height/1.2);
    d = 100;
    bag = loadImage("bag.png");
  }
  void display() {
    fill(255, 31, 214);
    image(bag, loc.x, loc.y, d, d);
  }

  void update() {
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        loc.x-=3;
      }
      if (keyCode == RIGHT) {
        loc.x+=3;
      }
    }
    loc.x = constrain(loc.x, 0, width-d);
  }

  void catchDrop(Raindrop drop) {
    //this means the catcher catches the raindrop, and the score increases by 1
    if (loc.dist(drop.loc) < d/2+drop.d/2) {
      drop.loc.set(-width, height*10);
      score++;
    }
  }
  void catchDrop(Coal drop) {
    //this means the catcher catches the raindrop, and the score increases by 1
    if (loc.dist(drop.loc) < d/2+drop.d/2) {
      drop.loc.set(-width, height*10);
      score--;
    }
  }
}

