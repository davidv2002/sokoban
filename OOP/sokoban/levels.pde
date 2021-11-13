void setupLevel() {
  switch(levelIndex) {
  case 0:
    levelData = loadBytes("levels/level0.dat");
    break;
  case 1:
    levelData = loadBytes("levels/level1.dat");
    break;
  case 2:
    levelData = loadBytes("levels/level2.dat");
    break;
  case 3:
    levelData = loadBytes("levels/level3.dat");
    break;
  case 4:
    levelData = loadBytes("levels/level4.dat");
    break;
  case 5:
    levelData = loadBytes("levels/level5.dat");
    break;
  case 6:
    levelData = loadBytes("levels/level6.dat");
    break;
  case 7:
    levelData = loadBytes("levels/level7.dat");
    break;
  case 8:
    levelData = loadBytes("levels/level8.dat");
    break;
  case 9:
    levelData = loadBytes("levels/level9.dat");
    break;
  default:
    exit();
  }
  load();
}

void load() {
  for (int i = 0; i < colors.length; i++) 
  {
    switch(levelData[i]) {
    case 0:
      colors[i] = black;
      break;
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
    }
  }
  drawLevel();
  // reset
  moveNumber = 0;
  pushNumber = 0;
}

void drawLevel() {
  // draw the level
  image(background, 0, 0, width, gameHeight);
  for (int i = 0; i < cellsWide; i++) {
    for (int j = 0; j < 9; j++) {
      if (colors[cellsWide*j+i] == 0xFF000000) {
      } else {
        fill(colors[cellsWide*j+i]);
        stroke(colors[cellsWide*j+i]);
        rect(xPositions[i], yPositions[j], boxWidth, boxHeight);
      }
    }
  }
  goals();
}
