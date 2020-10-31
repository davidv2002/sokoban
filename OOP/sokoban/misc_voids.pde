void setupLevel() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = #000000;
  }
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
  case 3:
    level3();
    break;
  case 4:
    level4();
    break;
  case 5:
    level5();
    break;
  case 6:
    level6();
    break;
  case 7:
    level7();
    break;
  case 8:
    level8();
    break;
  case 9:
    level9();
    break;
  default:
    exit();
  }
  // draw the level
  image(pic, 0, 0, width, gameHeight);
  for (int i = 0; i < cellsWide; i++) {
    for (int j = 0; j < 9; j++) {
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

void song() {
  if (mute == true) {
    song1.loop();
    mute = false;
  } else {
    song1.pause();
    song1.rewind();
    mute = true;
  }
}

void wallSound() {
  if (mute == true) {
  } else {
    song2.play();
    song2.rewind();
  }
}
