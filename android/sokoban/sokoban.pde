import android.view.MotionEvent;
import ketai.ui.*;

// global variables
KetaiGesture gesture;

Logic swap = new Logic(0, 0);
Logic pushLeft = new Logic(-1, 0);
Logic pushRight = new Logic(1, 0);
Logic pushUp = new Logic(0, -1);
Logic pushDown = new Logic(0, 1);

int boxesWide = 9, levelIndex = 0, X, Y, moveNumber, pushNumber, storedXIndex, storedYIndex, fontSize, black, white, brown, red, yellow;
float boxWidth, boxHeight, heightOffset, gameHeight, xDif, yDif, goalOffsetX, goalOffsetY, goalDiameter;
int[] colors = new int[boxesWide*9];
float[] xPositions = new float[boxesWide+1];
float[] yPositions = new float[10];
String level, moves, pushes;
PFont font;
PImage background;
boolean quitTest, restartTest, nextTest, lastTest, swipeTest, swipe;

void setup() {
  orientation(LANDSCAPE);
  gesture = new KetaiGesture(this);
  textAlign(CENTER, CENTER);
  fullScreen();
  population();
  setupLevel();
}

void draw() {
  panelTextPopulation();
  levelDraw();
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
  if (swipe) {
    xDif = px - xs;
    yDif = py - ys;
    if (abs(xDif) > abs(yDif)) {
      if (xDif > 0) {
        println("left");
        X = storedXIndex-1;
        Y = storedYIndex;
        dPadLogic();
      } else {
        println("right");
        X = storedXIndex+1;
        Y = storedYIndex;
        dPadLogic();
      }
    } else {
      if (yDif > 0) {
        println("up");
        X = storedXIndex;
        Y = storedYIndex-1;
        dPadLogic();
      } else {
        println("down");
        X = storedXIndex;
        Y = storedYIndex+1;
        dPadLogic();
      }
    }
  }
}
