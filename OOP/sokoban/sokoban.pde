// object definitions
Logic swap = new Logic(0, 0);
Logic pushLeft = new Logic(-1, 0);
Logic pushRight = new Logic(1, 0);
Logic pushUp = new Logic(0, -1);
Logic pushDown = new Logic(0, 1);

// global variables
int cellsWide, levelIndex, X, Y, moveNumber, pushNumber, storedXIndex, storedYIndex, black, white, brown, red, yellow, fontSize, oldWidth, oldHeight;
float boxWidth, boxHeight, heightOffset, gameHeight, goalDiameter, goalOffsetX, goalOffsetY;
PFont font;
PImage background;
boolean sound, winAnd;
float[] xPositions;
float[] yPositions;
int[] colors;
int[] dataOffsets;
byte[] levelData;

void setup() {
  size(1024, 768);
  surface.setResizable(true);
  textAlign(CENTER, CENTER);
  population();
  song0.loop();
  setupLevel();
}

void draw() {
  //MOS 8563 style interrupt
  if (oldWidth != width || oldHeight != height) {
    oldWidth = width;
    oldHeight = height;
    popResize();
    drawLevel();
  }
}

void mousePressed() {
  if (pmouseY < gameHeight) {
    baseLogic();
  } else {
    panelClick();
  }
}

void keyPressed() {
  switch(keyCode) {
    // start of dPad
  case UP:
    X = storedXIndex;
    Y = storedYIndex-1;
    logicSwitch();
    break;
  case DOWN:
    X = storedXIndex;
    Y = storedYIndex+1;
    logicSwitch();
    break;
  case LEFT:
    X = storedXIndex-1;
    Y = storedYIndex;
    logicSwitch();
    break;
  case RIGHT:
    X = storedXIndex+1;
    Y = storedYIndex;
    logicSwitch();
    break;
  case 87:
    X = storedXIndex;
    Y = storedYIndex-1;
    logicSwitch();
    break;
  case 83:
    X = storedXIndex;
    Y = storedYIndex+1;
    logicSwitch();
    break;
  case 66:
    X = storedXIndex-1;
    Y = storedYIndex;
    logicSwitch();
    break;
    // end of dPad
  case 68:
    X = storedXIndex+1;
    Y = storedYIndex;
    logicSwitch();
    break;
    // mute
  case 77:
    song();
    break;
    // restart
  case 82:
    if (moveNumber > 0) {
      setupLevel();
    }
    break;
    // quit
  case 27:
    exit();
  }
}
