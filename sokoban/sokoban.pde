// global variables
int cellsWide = 5, cellsTall = 5;
float cellWidth, cellHeight;
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
color[] Colors = new color[cellsWide*cellsTall];
PImage pic;

int x, y;
// color swap storage ints
int storedColor, storedIndexX, storedIndexY;
color black, white, brown, red, blue;

void setup() {
  size(1024, 768);
  population();
  buildMatrix();
  testLevel();
  image(pic, 0, 0, width, height);
  drawLevel();
}

void draw() {
}

void mousePressed() {
  baseLogic();
}
