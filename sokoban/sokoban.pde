// global variables
int cellsWide = 9, cellsTall = 9, levelIndex = 6, x, y, numMoves, numPush, storedColor, storedIndexX, storedIndexY;
float cellWidth, cellHeight, heightOffset, gameHeight;
color[] Colors = new color[cellsWide*cellsTall];
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
color black, white, brown, red, yellow;
String level, moves, pushes;
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
  if (pmouseY < gameHeight) {
    baseLogic();
  } else {
    panelClick();
  }
  winCheck();
}
