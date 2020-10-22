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

void buildMatrix() {
  // width and hight for the cells
  cellWidth = width/cellsWide;
  cellHeight = height/cellsTall;
  // x cords of matrix
  for (int i = 0; i < XPositions.length; i++) {
    XPositions[i] = width*((i*1.0)/cellsWide);
  }
  // y cords of matrix
  for (int i = 0; i < YPositions.length; i++) {
    YPositions[i] = height*((i*1.0)/cellsTall);
  }
}
