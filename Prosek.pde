void setup() {
  size(1200, 500);
  background(250);
  noLoop();
}

void draw() {
  for (int i = 0; i < 3; i++) {
    drawFlower();
  }
}

void drawFlower() {
  //define center
  int x = (int) (Math.random() * 1200);
  int y = 500 / 3;
  pushMatrix();
  translate(x, y);
  for (int i = 0; i < 8; i++) {
    int dx = (int) (Math.random() * 50);
    int dy = (int) (Math.random() * 50);
    int r = (int) (Math.random() * 50) + 15;
    int fill = (int) (Math.random() * 2);
    if (fill == 0) {
      noFill();
    } else {
      fill(i * (x + dx), i * (y + dy), (int)(Math.random() * 100));
    }
    stroke(5);

    //place circle
    rotate((2 * PI) / 4);
    //actually draw circle
    circle(dx, dy, r);
  }
  popMatrix();
  line(x, y, x, 500);
}
