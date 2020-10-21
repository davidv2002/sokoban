// global variables
int boxesWide = 3, boxesTall = 3;
float boxWidth, boxHeight;
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];

void setup() {
  size(1024, 768);
  population();
  buildMatrix();
}

void draw() {
  drawMatrix();
}

void mousePressed() {
}
