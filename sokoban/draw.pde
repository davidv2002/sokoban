void drawMatrix() {
  for ( int i = 0; i < boxesWide; i++) {
    for ( int j = 0; j < boxesTall; j++) {
      rect( XPositions[i], YPositions[j], boxWidth, boxHeight);
    }
  }
}
