// global variables
int cellsWide = 9, cellsTall = 9, levelIndex = 9, x, y, numMoves, numPush, storedColor, storedIndexX, storedIndexY, cellsWideBig = 46, cellsTallBig = 40;
float cellWidth, cellHeight, heightOffset, gameHeight, cellWidthBig, cellHeightBig;
color[] Colors = new color[cellsWide*cellsTall];
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
color[] ColorsBig = new color[cellsWideBig*cellsTallBig];
float[] XPositionsBig = new float[cellsWideBig+1];
float[] YPositionsBig = new float[cellsTallBig+1];
color black, white, brown, red, yellow;
String level, moves, pushes;
PFont buttonFont;
PImage pic;
boolean quitTest, restartTest, goal9, r1, r2;

void setup() {
  size(1024, 768);
  //fullScreen();
  population();
  buildMatrix();
  buildMatrixBig();
  setupLevel();
}

void draw() {
  goals();
  panel();
}

void mousePressed() {
  if (pmouseY < gameHeight) {
    if (levelIndex == 9) {
      baseLogicBig();
    } else {
      baseLogic();
    }
  } else {
    panelClick();
  }
  winCheck();
}
