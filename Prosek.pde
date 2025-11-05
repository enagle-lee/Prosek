void setup() {
  size(1500, 1000);
  background(250);
  noLoop();
}

void draw() {
  for (int i = 0; i < 50; i++) {
    drawFlower();
  }
}

void drawFlower() {
  //define center
  int x = (int) (Math.random() * 1500);
  int sd = 125;
  int mean = (1000 / 3);
  int y =(int) (randomGaussian() * sd) + mean;
  pushMatrix();
  translate(x, y);
  for (int i = 0; i < 8; i++) {
    int dx = (int) (Math.random() * 35);
    int dy = (int) (Math.random() * 35);
    int r = (int) (Math.random() * 35) + 15;
    int fill = (int) (Math.random() * 2);
    if (fill == 0) {
      noFill();
    } else {
      fill(i * x, i * y, 0);
    }
    stroke(5);

    //place circle
    rotate((2 * PI) / 4);
    //actually draw circle
    circle(dx, dy, r);
  }
  popMatrix();
  line(x, y, x, 1000);
}
