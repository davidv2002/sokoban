void setupLevel() {
  // reads from the level data array and loads the color data for the play field
  for (int i = 0; i < colors.length; i++) 
  {
    switch(levelData[i+dataOffsets[levelIndex]]) {
      // empty
    case 1:
      colors[i] = white;
      break;
      // box
    case 2:
      colors[i] = brown;
      break;
      // player
    case 3:
      colors[i] = red;
      // calculates the 2D player location from the 1D array
      storedXIndex = i % cellsWide;
      storedYIndex = floor(i/cellsWide);
      break;
      // wall
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
    for (int j = 0; j < cellsWide; j++) {
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
