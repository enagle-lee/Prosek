void setup() {
  size(1500, 1000);
  background(55, 55, 75);
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
  int y =(int) (randomGaussian() * 115) + (1000 / 3);
  
  //move coordinates
  pushMatrix();
  translate(x, y);
  
  //establish random petal perameters
  int numPetals = (int) (Math.random() * 4) + 4;
  for (int i = 0; i < numPetals; i++) {
    int dx = (int) (randomGaussian() * 20);
    int dy = (int) (randomGaussian() * 20);
    int r = (int) (abs(randomGaussian()) * 30) + 35;
    int fill = (int) (Math.random() * 2); // only "fill" in half the petals
    if (fill == 0) {
      noFill();
    } else {
      int alpha = (int)(randomGaussian() * 50) + 125;
      fill(x, y, 0, alpha);
    }
    stroke(200); // color of petal outiine
    
    //place petals
    rotate(((2 * PI) /5) * (1 + randomGaussian() * 0.2));
    //actually draw petal
    ellipse(dx, dy, r, r*2); 
  }
  
  // reset cooordinates
  popMatrix();
  
  //draw stem and center
  line(x, y, x, 1000);
  fill(0);
  circle(x, y, 25);
}
