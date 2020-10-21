// global variables
int boxesWide = 5, boxesTall = 5;
float boxWidth, boxHeight;
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];
color[] Colors = new color[boxesWide*boxesTall];

int i, j;
// color swap storage ints
int storedColor, storedIndexX, storedIndexY;
color black, white, green, red, blue;

void setup() {
  size(1024, 768);
  population();
  buildMatrix();
  loadLevel();
  drawMatrix();
}

void draw() {
}

void mousePressed() {
  baseLogic();
}
