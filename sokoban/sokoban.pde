// global variables
int cellsWide = 9, cellsTall = 9, levelIndex = 2;
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
  goals();
}

void mousePressed() {
  baseLogic();
  winCheck();
}
