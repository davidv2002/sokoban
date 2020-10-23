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
  // swap colors
  storedColor = Colors[cellsWide*storedIndexY+storedIndexX];
  Colors[cellsWide*storedIndexY+storedIndexX] = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*storedIndexY+storedIndexX]);
  rect( XPositions[storedIndexX], YPositions[storedIndexY], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
  // update indexes
  storedIndexX = x;
  storedIndexY = y;
  numMoves++;
}

void pushDirection() {
  if (storedIndexY == y) {
    if (storedIndexX-x > 0) {
      if (Colors[cellsWide*y+(x-1)] == #000000) {
      } else if (Colors[cellsWide*y+(x-1)] == #796F48) {
      } else {
        pushLeft();
        swap();
      }
    } else {
      if (Colors[cellsWide*y+x+1] == #000000) {
      } else if (Colors[cellsWide*y+x+1] == #796F48) {
      } else {
        pushRight();
        swap();
      }
    }
  } else {
    if (storedIndexY-y > 0) {
      if (Colors[cellsWide*(y-1)+x] == #000000) {
      } else if (Colors[cellsWide*(y-1)+x] == #796F48) {
      } else {
        pushUp();
        swap();
      }
    } else {
      if (Colors[cellsWide*(y+1)+x] == #000000) {
      } else if (Colors[cellsWide*(y+1)+x] == #796F48) {
      } else {
        pushDown();
        swap();
      }
    }
  }
}

void pushLeft() {
  // swap colors
  storedColor = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = Colors[cellsWide*y+(x-1)];
  Colors[cellsWide*y+(x-1)] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*y+(x-1)]);
  rect( XPositions[x-1], YPositions[y], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
}

void pushRight() {
  // swap colors
  storedColor = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = Colors[cellsWide*y+x+1];
  Colors[cellsWide*y+x+1] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*y+x+1]);
  rect( XPositions[x+1], YPositions[y], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
}

void pushUp() {
  // swap colors
  storedColor = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = Colors[cellsWide*(y-1)+x];
  Colors[cellsWide*(y-1)+x] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*(y-1)+x]);
  rect( XPositions[x], YPositions[y-1], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
}

void pushDown() {
  // swap colors
  storedColor = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = Colors[cellsWide*(y+1)+x];
  Colors[cellsWide*(y+1)+x] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*(y+1)+x]);
  rect( XPositions[x], YPositions[y+1], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
}
