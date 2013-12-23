class Raindrop {
  PVector loc, vel;
  int d;
  PImage present;

  Raindrop() {
    //this defines the present's location and velocity and loads the image
    d = 30;
    present = loadImage("present.png");
    loc = new PVector(random(0, width-d/2), -d); 
    vel = new PVector(0, random(5, 8));
  }

  void display() {
     //this allows the present to be displayed
    image(present, loc.x, loc.y, d, d);
  }
  void drop() {
    //this allows each present to fall at different velocities
    loc.add(vel);
  }
}

