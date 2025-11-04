void setup() {
  size(1200, 500);
  background(250);
  noLoop();
}

void draw() {
  for (int i = 0; i < 15; i++) {
    drawFlower();
  }
}

void drawFlower() {
  int x = (int) (Math.random() * 1200);
  int y = (-1) * (int) (Math.random() * 250) + 250;
  for (int i = 0; i < 4; i++) {
    int xDisplacement = (int) (Math.random() * 50);
    int yDisplacement = (int) (Math.random() * 50);
    int r = (int) (Math.random() * 100) + 15;
    int fill = (int) (Math.random() * 3);
    if (fill == 0 || fill == 1) {
      noFill();
    } else {
      fill(i * (x + xDisplacement), i * (y + yDisplacement), (int)(Math.random() * 100));
    }
    stroke(5);

    //arc(x + xDisplacement, y + yDisplacement, r, r, 0, 2 * PI);
    circle(x + xDisplacement, y + yDisplacement, r);
  }
}
