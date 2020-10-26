void setupLevel() {
  switch(levelIndex) {
  case 0:
    levelPrep();
    level0();
    drawLevel();
    break;
  case 1:
    levelPrep();
    level1();
    drawLevel();
    break;
  case 2:
    levelPrep();
    level2();
    drawLevel();
    break;
  case 3:
    levelPrep();
    level3();
    drawLevel();
    break;
  case 4:
    levelPrep();
    level4();
    drawLevel();
    break;
  case 5:
    levelPrep();
    level5();
    drawLevel();
    break;
  case 6:
    levelPrep();
    level6();
    drawLevel();
    break;
  case 7:
    levelPrep();
    level7();
    drawLevel();
    break;
  case 8:
    levelPrep();
    level8();
    drawLevel();
    break;
  case 9:
    levelPrep();
    level9();
    drawLevel();
    break;
  default:
    exit();
  }
}

void levelPrep() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = #000000;
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
