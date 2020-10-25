void setupLevel() {
  switch(levelIndex) {
  case 0:
    level0();
    drawLevel();
    break;
  case 1:
    level1();
    drawLevel();
    break;
  case 2:
    level2();
    drawLevel();
    break;
  case 3:
    level3();
    drawLevel();
    break;
  case 4:
    level4();
    drawLevel();
    break;
  case 5:
    level5();
    drawLevel();
    break;
  case 6:
    level6();
    drawLevel();
    break;
  case 7:
    level7();
    drawLevel();
    break;
  case 8:
    level8();
    drawLevel();
    break;
  case 9:
    level9();
    drawLevel();
    break;
  default:
    exit();
  }
}

void drawLevel() {
  image(pic, 0, 0, width, gameHeight);
  for (int i = 0; i < cellsWide; i++) {
    for (int j = 0; j < cellsTall; j++) {
      if (Colors[cellsWide*j+i] == #000000) {
      } else {
        fill( Colors[cellsWide*j+i]);
        rect( XPositions[i], YPositions[j], cellWidth, cellHeight);
      }
    }
  }
  numMoves = 0;
  numPush = 0;
}
