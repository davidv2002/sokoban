void goals() {
  fill(yellow);
  stroke(yellow);
  for (int i = 0; i < levelData[81+dataOffsets[levelIndex]]; i++) {
    circle(xPositions[levelData[82+(i*2)+dataOffsets[levelIndex]]]+goalOffsetX, yPositions[levelData[83+(i*2)+dataOffsets[levelIndex]]]+goalOffsetY, goalDiameter);
  }
  stroke(black);
}

void winCheck() {
  winAnd = true;
  for (int i = 0; i < levelData[81+dataOffsets[levelIndex]]; i++) {
    winAnd = (colors[(cellsWide*levelData[83+(i*2)+dataOffsets[levelIndex]])+levelData[82+(i*2)+dataOffsets[levelIndex]]] == brown && winAnd);
  }
  if (winAnd) {
    win();
  }
}

void win() {
  winSound();
  levelIndex++;
  if (levelIndex == dataOffsets.length) {
    exit();
  } else {
    setupLevel();
  }
}
