/**
 black = walls
 red = player
 brown = box
 */

void baseLogic() {
  for ( i = 0; i < cellsWide; i++) {
    for ( j = 0; j < cellsTall; j++) {
      if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1] && abs(storedIndexX-i)+abs(storedIndexY-j) == 1) {
        switch(Colors[cellsWide*j+i]) {
        case #000000: // black
          println("wall");
          break;
        case #796F48: // brown
          println("box");
          boxPush();
          swap();
          break;
        default:
          println("swap");
          swap();
          break;
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
