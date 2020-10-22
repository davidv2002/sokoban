// global variables
int cellsWide = 5, cellsTall = 5;
float cellWidth, cellHeight;
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
color[] Colors = new color[cellsWide*cellsTall];

int x, y;
// color swap storage ints
int storedColor, storedIndexX, storedIndexY;
color black, white, brown, red, blue;

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
