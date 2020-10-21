void baseLogic() {
  for ( i = 0; i < cellsWide; i++) {
    for ( j = 0; j < cellsTall; j++) {
      if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1]) {
        if (Colors[cellsWide*j+i] == black) {
        } else if (abs(storedIndexX-i)+abs(storedIndexY-j) == 1) {
          swap();
        }
      }
    }
  }
}

void swap() {
  // swap the color of the two cells
  // swap colors
  storedColor = Colors[cellsWide*storedIndexY+storedIndexX];
  Colors[cellsWide*storedIndexY+storedIndexX] = Colors[cellsWide*j+i];
  Colors[cellsWide*j+i] = storedColor;
  // redraw first clicked cell
  fill( Colors[cellsWide*storedIndexY+storedIndexX]);
  rect( XPositions[storedIndexX], YPositions[storedIndexY], cellWidth, cellHeight);
  // redraw second clicked cell
  fill( Colors[cellsWide*j+i]);
  rect( XPositions[i], YPositions[j], cellWidth, cellHeight);
  storedIndexX = i;
  storedIndexY = j;
}
