void drawMatrix() {
  for (i = 0; i < boxesWide; i++) {
    for (j = 0; j < boxesTall; j++) {
      fill( Colors[boxesWide*j+i]);
      rect( XPositions[i], YPositions[j], boxWidth, boxHeight);
    }
  }
}

void buildMatrix() {
  // width and hight for the boxes
  boxWidth = width/boxesWide;
  boxHeight = height/boxesTall;
  // x cords of matrix
  for (i = 0; i < XPositions.length; i++) {
    XPositions[i] = width*((i*1.0)/boxesWide);
  }
  // y cords of matrix
  for (i = 0; i < YPositions.length; i++) {
    YPositions[i] = height*((i*1.0)/boxesTall);
  }
}
