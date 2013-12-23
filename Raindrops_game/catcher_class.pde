class Catcher {
  PVector loc;
  int d;
  int x= width/2;
  PImage bag;

  Catcher() {
    loc = new PVector(x, height/1.2);
    d = 100;
    bag = loadImage("bag.png");
  }
  void display() {
    //this makes the catchar santa's bag
    fill(255, 31, 214);
    image(bag, loc.x, loc.y, d, d);
  }

  void update() {
    //this makes the catcher move with the arrow keys
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        loc.x-=3;
      }
      if (keyCode == RIGHT) {
        loc.x+=3;
      }
    }
    //this doesn't let the catcher off the screen
    loc.x = constrain(loc.x, 0, width-d);
  }

  void catchDrop(Raindrop drop) {
    //this means the catcher catches the present, and the score increases by 1
    if (loc.dist(drop.loc) < d/2+drop.d/2) {
      drop.loc.set(-width, height*10);
      score++;
    }
  }
  void catchDrop(Coal drop) {
    //this means the catcher catches the coal, and the score increases by 1
    if (loc.dist(drop.loc) < d/2+drop.d/2) {
      drop.loc.set(-width, height*10);
      score--;
    }
  }
}

