class Coal {
  PVector loc, vel;
  int d;
  PImage coal;

  Coal() {
    d = 30;
    //this displays the raindrop in different places
    coal = loadImage("coal.png");
    loc = new PVector(random(0, width-d/2), -d); 
    vel = new PVector(0, random(7, 10));
  }

  void display() {
    fill(62, 255, 5);
    image(coal, loc.x, loc.y, d, d);
  }
  void drop() {
    //this allows each raindrop to fall at different velocities
    loc.add(vel);
  }
}

