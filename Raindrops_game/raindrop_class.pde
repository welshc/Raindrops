class Raindrop {
  PVector loc, vel;
  int d;

  Raindrop() {
    d = 10;
    //this displays the raindrop in different places
    loc = new PVector(random(0, width-d/2), -d); 
    vel = new PVector(0, random(2, 8));
  }

  void display() {
    fill(62, 255, 5);
    ellipse(loc.x, loc.y, d, d);
  }
  void drop() {
    //this allows each raindrop to fall at different velocities
    loc.add(vel);
  }
}

