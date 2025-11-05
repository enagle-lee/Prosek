void setup() {
  size(1500, 1000);
  background(250);
  noLoop();
}

void draw() {
  for (int i = 0; i < 15; i++) {
    drawFlower();
  }
}

void drawFlower() {
  //define center
  int x = (int) (Math.random() * 1500);
  int y =(int) (randomGaussian() * 125) + (1000 / 3);
  pushMatrix();
  translate(x, y);
  int numPetals = (int) (Math.random() * 4) + 4;
  for (int i = 0; i < numPetals; i++) {
    int dx = (int) (randomGaussian() * 20);
    int dy = (int) (randomGaussian() * 20);
    int r = (int) (abs(randomGaussian()) * 30) + 35;

    int fill = (int) (Math.random() * 2);
    if (fill == 0) {
      noFill();
    } else {
      int alpha = (int)(randomGaussian() * 50) + 125;
      fill(x, y, 0, alpha);
    }
    stroke(5);

    //place circle
    rotate(((2 * PI) /5) * (1 + randomGaussian() * 0.2));
    //actually draw circle
    //circle(dx, dy, r);
    ellipse(dx, dy, r, r*2); 
  }
  popMatrix();
  fill(0);
  circle(x, y, 25);
  line(x, y, x, 1000);
}
