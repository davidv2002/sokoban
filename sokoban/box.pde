void pushDirection() {
  if (storedIndexY == y) {
    if (storedIndexX-x > 0) {
      if (Colors[cellsWide*y+(x-1)] == #000000) {
      } else if (Colors[cellsWide*y+(x-1)] == #796F48) {
      } else {
        println("push left");
        pushLeft();
        swap();
      }
    } else {
      if (Colors[cellsWide*y+x+1] == #000000) {
      } else if (Colors[cellsWide*y+x+1] == #796F48) {
      } else {
        println("push right");
        pushRight();
        swap();
      }
    }
  } else {
    if (storedIndexY-y > 0) {
      if (Colors[cellsWide*(y-1)+x] == #000000) {
      } else if (Colors[cellsWide*(y-1)+x] == #796F48) {
      } else {
        println("push up");
        pushUp();
        swap();
      }
    } else {
      if (Colors[cellsWide*(y+1)+x] == #000000) {
      } else if (Colors[cellsWide*(y+1)+x] == #796F48) {
      } else {
        println("push down");
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
