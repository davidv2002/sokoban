// global variables
int cellsWide = 9, cellsTall = 9, levelIndex = 0, x, y, numMoves, numPush, storedIndexX, storedIndexY;
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
  size(1024, 768);
  population();
}

void draw() {
  panalTextPopulation();
  goals();
  panel();
}

void mousePressed() {
  if (pmouseY < gameHeight) {
    baseLogic();
    winCheck();
  } else {
    panelClick();
  }
}

void keyPressed() {
  if (key == CODED) {
    switch(keyCode) {
    case UP:
      x = storedIndexX;
      y = storedIndexY-1;
      dPadLogic();
      break;
    case DOWN:
      x = storedIndexX;
      y = storedIndexY+1;
      dPadLogic();
      break;
    case LEFT:
      x = storedIndexX-1;
      y = storedIndexY;
      dPadLogic();
      break;
    case RIGHT:
      x = storedIndexX+1;
      y = storedIndexY;
      dPadLogic();
      break;
    }
    winCheck();
  }
}
