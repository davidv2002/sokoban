// global variables
int cellsWide = 9, cellsTall = 9, levelIndex = 0, x, y, numMoves, storedColor, storedIndexX, storedIndexY;
float cellWidth, cellHeight, heightOffset, gameHeight;
color[] Colors = new color[cellsWide*cellsTall];
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
color black, white, brown, red, yellow;
String level, moves;
PFont buttonFont;
PImage pic;
boolean quitTest, restartTest;

void setup() {
  size(1024, 768);
  population();
  buildMatrix();
  setupLevel();
}

void draw() {
  goals();
  panel();
}

void mousePressed() {
  if (mouseX < gameHeight) {
    baseLogic();
  } else {
    panelClick();
  }
  winCheck();
}
