Raindrop[] r = new Raindrop[100];
Catcher catcher;

void setup() {
  size(300, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  catcher = new Catcher();
}

void draw() {
  background(198, 227, 253);
  for (int i = 0; i < r.length; i++) {
    r[i].display();
    r[i].drop();
    r[i].wrapAround();
  } 
  catcher.display();
  catcher.update();
}

