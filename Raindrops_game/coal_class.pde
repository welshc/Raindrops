class Coal {
  PVector loc, vel;
  int d;
  PImage coal;

  Coal() {
    d = 30;
    //this loads the coal and defines its location and velocity
    coal = loadImage("coal.png");
    loc = new PVector(random(0, width-d/2), -d); 
    vel = new PVector(0, random(7, 10));
  }

  void display() {
    //this allows the coal to be displayed
    image(coal, loc.x, loc.y, d, d);
  }
  void drop() {
    //this allows each coal to fall at different velocities
    loc.add(vel);
  }
}

