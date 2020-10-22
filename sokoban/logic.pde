/**
 black = walls
 red = player
 brown = box
 */

void baseLogic() {
  for ( x = 0; x < cellsWide; x++) {
    for ( y = 0; y < cellsTall; y++) {
      if (mouseX>XPositions[x] && mouseY>YPositions[y] && mouseX<XPositions[x+1] && mouseY<YPositions[y+1] && abs(storedIndexX-x)+abs(storedIndexY-y) == 1) {
        switch(Colors[cellsWide*y+x]) {
        case #000000: // black
          println("wall");
          break;
        case #796F48: // brown
          println("box");
          pushDirection();
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
  Colors[cellsWide*storedIndexY+storedIndexX] = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = storedColor;
  // redraw first clicked cell
  fill( Colors[cellsWide*storedIndexY+storedIndexX]);
  rect( XPositions[storedIndexX], YPositions[storedIndexY], cellWidth, cellHeight);
  // redraw second clicked cell
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
  storedIndexX = x;
  storedIndexY = y;
}
