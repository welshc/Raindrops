class Coal {
  PVector loc, vel;
  int d;
  PImage coal;

  Coal() {
    //this defines the coal's location and velocity and loads the image
    d = 30;
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

