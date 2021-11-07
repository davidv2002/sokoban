void setupLevel() {
  switch(levelIndex) {
  case 0:
    data = loadBytes("levels/level0.dat");
    break;
  case 1:
    data = loadBytes("levels/level1.dat");
    break;
  case 2:
    data = loadBytes("levels/level2.dat");
    break;
  case 3:
    data = loadBytes("levels/level3.dat");
    break;
  case 4:
    data = loadBytes("levels/level4.dat");
    break;
  case 5:
    data = loadBytes("levels/level5.dat");
    break;
  case 6:
    data = loadBytes("levels/level6.dat");
    break;
  case 7:
    data = loadBytes("levels/level7.dat");
    break;
  case 8:
    data = loadBytes("levels/level8.dat");
    break;
  case 9:
    data = loadBytes("levels/level9.dat");
    break;
  default:
    exit();
  }
  load();
}

void load() {
  for (int i = 0; i < colors.length; i++) 
  {
    switch(data[i]) {
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
    }
  }
  storedXIndex = data[81];
  storedYIndex = data[82];
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
