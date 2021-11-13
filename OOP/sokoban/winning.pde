void goals() {
  fill(yellow);
  stroke(yellow);
  for (int i = 0; i < levelData[81]; i++) {
    circle(xPositions[levelData[82+(i*2)]]+goalOffsetX, yPositions[levelData[83+(i*2)]]+goalOffsetY, goalDiameter);
  }
  stroke(black);
}

void winCheck() {
  winAnd = true;
  for (int i = 0; i < levelData[81]; i++) {
    winAnd = (colors[(cellsWide*levelData[83+(i*2)])+levelData[82+(i*2)]] == brown && winAnd);
  }
  if (winAnd == true) {
    win();
  }
}

void win() {
  winSound();
  levelIndex++;
  setupLevel();
}
