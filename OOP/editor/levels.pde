void drawLevel() {
  // draw the level
  for (int i = 0; i < cellsWide; i++) {
    for (int j = 0; j < cellsWide; j++) {
        fill(colors[cellsWide*j+i]);
        stroke(#C1C1C1);
        rect(xPositions[i], yPositions[j], boxWidth, boxHeight);
    }
  }
  //goals();
  panel();
}

// draws the circles to mark where the boxes need to be put
void goals() {
  fill(yellow);
  stroke(yellow);
  for (int i = 0; i < levelData[81]; i++) {
    circle(xPositions[levelData[82+(i*2)]]+goalOffsetX, yPositions[levelData[83+(i*2)]]+goalOffsetY, goalDiameter);
  }
  stroke(black);
}
