void drawLevelBig() {
  image(pic, 0, 0, width, gameHeight);
  for (int i = 0; i < cellsWideBig; i++) {
    for (int j = 0; j < cellsTallBig; j++) {
      if (ColorsBig[cellsWideBig*j+i] == #000000) {
      } else {
        fill( ColorsBig[cellsWideBig*j+i]);
        rect( XPositionsBig[i], YPositionsBig[j], cellWidthBig, cellHeightBig);
      }
    }
  }
  numMoves = 0;
  numPush = 0;
}

void buildMatrixBig() {
  // width and hight for the cells
  cellWidthBig = width/cellsWideBig;
  cellHeightBig = gameHeight/cellsTallBig;
  // x cords of matrix
  for (int i = 0; i < XPositionsBig.length; i++) {
    XPositionsBig[i] = width*((i*1.0)/cellsWideBig);
  }
  // y cords of matrix
  for (int i = 0; i < YPositionsBig.length; i++) {
    YPositionsBig[i] = gameHeight*((i*1.0)/cellsTallBig);
  }
}
