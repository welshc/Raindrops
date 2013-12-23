class Raindrop {
  PVector loc, vel;
  int d;
  PImage present;

  Raindrop() {
    d = 30;
    //this loads the present and defines its location and velocity
    present = loadImage("present.png");
    //this displays the raindrop in different places
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

