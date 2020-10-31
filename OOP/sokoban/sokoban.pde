import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global variables
Minim minim;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioPlayer song4;

Logic swap = new Logic(0, 0);
Logic pushLeft = new Logic(-1, 0);
Logic pushRight = new Logic(1, 0);
Logic pushUp = new Logic(0, -1);
Logic pushDown = new Logic(0, 1);

int cellsWide = 9, levelIndex = 0, x, y, numMoves, numPush, storedIndexX, storedIndexY, black, white, brown, red, yellow;
float cellWidth, cellHeight, heightOffset, gameHeight;
int[] colors = new int[cellsWide*9];
float[] xPositions = new float[cellsWide+1];
float[] yPositions = new float[10];
String level, moves, pushes;
PFont buttonFont;
PImage pic;
boolean quitTest, restartTest, nextTest, lastTest, mute, muteTest;


void setup() {
  size(1024, 768);
  population();
  song();
  setupLevel();
}

void draw() {
  panalTextPopulation();
  goals();
  panel();
}

void mousePressed() {
  if (pmouseY < gameHeight) {
    baseLogic();
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
    }
  }
}
