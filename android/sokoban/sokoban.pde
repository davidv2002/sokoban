import android.view.MotionEvent;
import ketai.ui.*;

// global variables
KetaiGesture gesture;

Logic swap = new Logic(0, 0);
Logic pushLeft = new Logic(-1, 0);
Logic pushRight = new Logic(1, 0);
Logic pushUp = new Logic(0, -1);
Logic pushDown = new Logic(0, 1);

int cellsWide = 9, cellsTall = 9, levelIndex = 0, x, y, numMoves, numPush, storedIndexX, storedIndexY, black, white, brown, red, yellow;
float cellWidth, cellHeight, heightOffset, gameHeight, xDif, yDif;
int[] colors = new int[cellsWide*cellsTall];
float[] xPositions = new float[cellsWide+1];
float[] yPositions = new float[cellsTall+1];
String level, moves, pushes;
PFont buttonFont;
PImage pic;
boolean quitTest, restartTest, nextTest, lastTest, swipeTest, swipe;

void setup() {
  orientation(LANDSCAPE);
  gesture = new KetaiGesture(this);
  fullScreen();
  population();
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
    }
  } else {
    panelClick();
  }
}

void onFlick(float xs, float ys, float px, float py, float v) {
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
