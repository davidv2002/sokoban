// object definitions
Logic swap = new Logic(0, 0);
Logic pushLeft = new Logic(-1, 0);
Logic pushRight = new Logic(1, 0);
Logic pushUp = new Logic(0, -1);
Logic pushDown = new Logic(0, 1);

// global variables
int cellsWide, levelIndex, X, Y, moveNumber, pushNumber, storedXIndex, storedYIndex, black, white, brown, red, yellow, fontSize, resizeSkip;
int[] colors;
float boxWidth, boxHeight, heightOffset, gameHeight, goalDiameter, goalOffsetX, goalOffsetY;
float[] xPositions;
float[] yPositions;
byte data[];
String level, moves, pushes;
PFont font;
PImage background;
boolean quitTest, restartTest, nextTest, lastTest, sound, soundTest;

void setup() {
  size(1024, 768);
  surface.setResizable(true);
  textAlign(CENTER, CENTER);
  population();
  song0.loop();
  setupLevel();
}

void draw() {
  if (resizeSkip == 0) {
    populationResize();
    drawLevel();
    resizeSkip = 4;
  } else {
    resizeSkip--;
  }
  println(frameRate);
  panelTextPopulation();
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
  switch(keyCode) {
  case UP:
    X = storedXIndex;
    Y = storedYIndex-1;
    dPadLogic();
    break;
  case DOWN:
    X = storedXIndex;
    Y = storedYIndex+1;
    dPadLogic();
    break;
  case LEFT:
    X = storedXIndex-1;
    Y = storedYIndex;
    dPadLogic();
    break;
  case RIGHT:
    X = storedXIndex+1;
    Y = storedYIndex;
    dPadLogic();
    break;
  case 87:
    X = storedXIndex;
    Y = storedYIndex-1;
    dPadLogic();
    break;
  case 83:
    X = storedXIndex;
    Y = storedYIndex+1;
    dPadLogic();
    break;
  case 66:
    X = storedXIndex-1;
    Y = storedYIndex;
    dPadLogic();
    break;
  case 68:
    X = storedXIndex+1;
    Y = storedYIndex;
    dPadLogic();
    break;
  case 77:
    song();
    break;
  case 82:
    if (moveNumber > 0) {
      load();
    }
    break;
  case 27:
    exit();
  }
}
