class Bad_raindrop {
  PVector loc, vel;
  PImage fireball;
  int d;

  Bad_raindrop() {
    fireball = loadImage("fireball.png");
    d = 20;
    //this displays the raindrop in different places
    loc = new PVector(random(0, width-d/2), -d); 
    vel = new PVector(0, random(7, 10));
  }

  void display() {
    image(fireball, loc.x, loc.y, d, d);
  }
  void drop() {
    //this allows each raindrop to fall at different velocities
    loc.add(vel);
  }
}

