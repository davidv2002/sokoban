// global variables
int cellsWide = 5, cellsTall = 5, levelIndex = 0;
float cellWidth, cellHeight;
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
color[] Colors = new color[cellsWide*cellsTall];
PImage pic;

int x, y;
// color swap storage ints
int storedColor, storedIndexX, storedIndexY;
color black, white, brown, red, yellow;

void setup() {
  size(1024, 768);
  population();
  buildMatrix();
  setupLevel();
}

void draw() {
}

void mousePressed() {
  baseLogic();
  winCheck();
}
