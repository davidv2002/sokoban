void goals() {
  fill(yellow);
  stroke(yellow);
  for (int i = 0; i < data[83]; i++) {
    circle(xPositions[data[84+(i*2)]]+goalOffsetX, yPositions[data[85+(i*2)]]+goalOffsetY, goalDiameter);
  }
  stroke(black);
}

void winCheck() {
  winAnd = true;
  for (int i = 0; i < data[83]; i++) {
    winAnd = (colors[(cellsWide*data[85+(i*2)])+data[84+(i*2)]] == brown && winAnd);
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
