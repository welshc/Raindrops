int old = 0;
int current = 0;
int change = 0;
int x=50;
int y=50;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  ellipse(mouseX, mouseY, x, y);
  current = millis();
  change = current - old; 
  if (mousePressed == true) {
    ellipse(100, 100, x, y);
  }
  if (change >= 2000) {
    fill(random(255), random(255), random(255));
    old = current;
  }
  if (mouseY > height/2) {
    x++;
    y++;
  }
  if (mouseY < height/2) {
    x--;
    y--;
  }
}

