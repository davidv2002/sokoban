void setupLevel() {
  switch(levelIndex) {
  case 0:
    level0();
    break;
  case 1:
    level1();
    break;
  case 2:
    level2();
    break;
  case 10:
    level10();
    break;
  default:
    exit();
  }
  image(pic, 0, 0, width, gameHeight);
  numMoves = 0;
  drawLevel();
}

void drawLevel() {
  for (int i = 0; i < cellsWide; i++) {
    for (int j = 0; j < cellsTall; j++) {
      if (Colors[cellsWide*j+i] == #000000) {
      } else {
        fill( Colors[cellsWide*j+i]);
        rect( XPositions[i], YPositions[j], cellWidth, cellHeight);
      }
    }
  }
}
