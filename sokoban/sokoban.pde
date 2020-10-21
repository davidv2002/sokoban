// global variables
int boxesWide = 3, boxesTall = 3;
float boxWidth, boxHeight;
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];
color[] Colors = new color[boxesWide*boxesTall];

// color swap storage ints
int storedColor, storedIndexX, storedIndexY;

void setup() {
  size(1024, 768);
  population();
  buildMatrix();
  drawMatrix();
}

void draw() {
}

void mousePressed() {
  swapLogic();
}
