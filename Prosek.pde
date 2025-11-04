void setup() {
  size(1200, 500);
  background(200);
}

void draw() {
  for (int i = 0; i < 100; i++) {
    drawFlower();
  }
}

void drawFlower() {
  int x = (int) (Math.random() * 1200);
  int y = (int) (Math.random() * 500);
  int r = (int) (Math.random() * 10);
  circle(x, y, r);
}
