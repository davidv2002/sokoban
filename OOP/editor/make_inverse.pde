// loads the level data file into the array and then finds the index of the level offset bytes
void dataLoad() {
  levelData = loadBytes("levels/levels.dat");
  dataOffsets = new int[0];
  for (int i = 0; i < levelData.length; i++) {
    if (levelData[i] == -1) {
      dataOffsets = append(dataOffsets, i);
    }
  }
}

void setupLevel() {
  // reads from the level data array and loads the color data for the play field 
  for (int i = 0; i < colors.length; i++) 
  {
    switch(levelData[i]) {
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
}
