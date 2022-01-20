void setupLevel() {
  for (int i = 0; i < colors.length; i++) 
  {
    switch(levelData[i+dataOffsets[levelIndex]]) {
    case 1:
      colors[i] = white;
      break;
    case 2:
      colors[i] = brown;
      break;
    case 3:
      colors[i] = red;
      storedXIndex = i % 9;
      storedYIndex = floor(i/9);
      break;
    default:
      colors[i] = black;
    }
  }
  // reset
  moveNumber = pushNumber = 0;
  drawLevel();
}

void drawLevel() {
  // draw the level
  image(background, 0, 0, width, gameHeight);
  for (int i = 0; i < cellsWide; i++) {
    for (int j = 0; j < 9; j++) {
      if (colors[cellsWide*j+i] == black) {
      } else {
        fill(colors[cellsWide*j+i]);
        stroke(colors[cellsWide*j+i]);
        rect(xPositions[i], yPositions[j], boxWidth, boxHeight);
      }
    }
  }
  goals();
  panel();
}
