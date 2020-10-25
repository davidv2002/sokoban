// global variables
int cellsWide = 9, cellsTall = 9, levelIndex = 0, x, y, numMoves, numPush, storedColor, storedIndexX, storedIndexY;
float cellWidth, cellHeight, heightOffset, gameHeight;
color[] Colors = new color[cellsWide*cellsTall];
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
color black, white, brown, red, yellow;
String level, moves, pushes;
PFont buttonFont;
PImage pic;
boolean quitTest, restartTest, nextTest, lastTest, mute, muteTest;

void setup() {
  orientation(LANDSCAPE);
  //size(1024, 768);
  fullScreen();
  population();
  panelPopulation();
  soundPopulation();
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
