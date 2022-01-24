// global variables
int cellsWide, X, Y, storedXIndex, storedYIndex, black, white, brown, red, yellow, fontSize, oldWidth, oldHeight;
float boxWidth, boxHeight, heightOffset, gameHeight, goalDiameter, goalOffsetX, goalOffsetY;
PFont font;
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
  } else {
    panelClick();
  }
}
