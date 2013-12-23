class Catcher {
  PVector loc;
  int d;
  int x= width/2;
  PImage bag;

  Catcher() {
    //this defines the catcher's location and velocity and loads the image
    loc = new PVector(x, height/1.2);
    d = 100;
    bag = loadImage("bag.png");
  }
  void display() {
    //this allows the catcher to be displayed
    image(bag, loc.x, loc.y, d, d);
  }

  void update() {
    //this allows the catcher to move with the arrow keys
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        loc.x-=3;
      }
      if (keyCode == RIGHT) {
        loc.x+=3;
      }
    }
    //this makes sure the catcher doesn't leave the screen
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
    //this means the catcher catches the coal, and the score decreases by 1
    if (loc.dist(drop.loc) < d/2+drop.d/2) {
      drop.loc.set(-width, height*10);
      score--;
    }
  }
}

