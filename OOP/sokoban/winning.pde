// draws the circles to mark where the boxes need to be put
void goals() {
  fill(yellow);
  stroke(yellow);
  for (int i = 0; i < levelData[81+dataOffsets[levelIndex]]; i++) {
    circle(xPositions[levelData[82+(i*2)+dataOffsets[levelIndex]]]+goalOffsetX, yPositions[levelData[83+(i*2)+dataOffsets[levelIndex]]]+goalOffsetY, goalDiameter);
  }
  stroke(black);
}

// checks if the boxes are all in the right place
void winCheck() {
  winAnd = true;
  for (int i = 0; i < levelData[81+dataOffsets[levelIndex]]; i++) {
    winAnd = (colors[(cellsWide*levelData[83+(i*2)+dataOffsets[levelIndex]])+levelData[82+(i*2)+dataOffsets[levelIndex]]] == brown && winAnd);
  }
  if (winAnd) {
    win();
  }
}

// advances you to the next level, if you completed the last level it closes the program
void win() {
  winSound();
  levelIndex++;
  if (levelIndex == dataOffsets.length) {
    exit();
  } else {
    setupLevel();
  }
}
