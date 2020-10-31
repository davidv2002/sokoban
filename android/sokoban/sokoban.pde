import android.view.MotionEvent;
import ketai.ui.*;

// global variables
KetaiGesture gesture;
int cellsWide = 9, cellsTall = 9, levelIndex = 0, x, y, numMoves, numPush, storedColor, storedIndexX, storedIndexY;
float cellWidth, cellHeight, heightOffset, gameHeight, xDif, yDif;
color[] Colors = new color[cellsWide*cellsTall];
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
color black, white, brown, red, yellow;
String level, moves, pushes;
PFont buttonFont;
PImage pic;
boolean quitTest, restartTest, nextTest, lastTest, swipeTest, swipe;

void setup() {
  orientation(LANDSCAPE);
  gesture = new KetaiGesture(this);
  fullScreen();
  population();
  panelPopulation();
  buildMatrix();
  setupLevel();
}

void draw() {
  panelTextPopulation();
  goals();
  panel();
}

void mousePressed() {
  if (pmouseY < gameHeight) {
    if (swipe == false) {
      baseLogic();
      winCheck();
    }
  } else {
    panelClick();
  }
}

void onFlick( float xs, float ys, float px, float py, float v) {
  if (swipe == true) {
    xDif = px - xs;
    yDif = py - ys;
    if (abs(xDif) > abs(yDif)) {
      if (xDif > 0) {
        println("left");
        x =storedIndexX-1;
        y = storedIndexY;
        dPadLogic();
      } else {
        println("right");
        x =storedIndexX+1;
        y = storedIndexY;
        dPadLogic();
      }
    } else {
      if (yDif > 0) {
        println("up");
        x =storedIndexX;
        y = storedIndexY-1;
        dPadLogic();
      } else {
        println("down");
        x =storedIndexX;
        y = storedIndexY+1;
        dPadLogic();
      }
    }
  }
}
