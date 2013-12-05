class Raindrop {
  PVector loc, vel, acc;
  int d;

  Raindrop() {
    d = 10;
    loc = new PVector(random(0, width), -d); 
    vel = new PVector(0, random(0, .1));
    acc = new PVector(0, .01);
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
  void drop() {
    vel.add(acc);
    loc.add(vel);
  }
  void wrapAround() {
    if (loc.y > height) {
      loc.y = 0;
    }
  }
}

