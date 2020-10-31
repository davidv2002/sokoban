void baseLogic() {
  for (x = 0; x < cellsWide; x++) {
    for (y = 0; y < cellsTall; y++) {
      if (pmouseX > xPositions[x] && pmouseY > yPositions[y] && pmouseX < xPositions[x+1] && pmouseY < yPositions[y+1] && abs(storedIndexX-x)+abs(storedIndexY-y) == 1) {
        switch(colors[cellsWide*y+x]) {
        case 0xFF000000: // black
          break;
        case 0xFF796F48: // brown
          pushDirection();
          break;
        default:
          swap.swap();
        }
      }
    }
  }
}

void dPadLogic() {
  switch(colors[cellsWide*y+x]) {
  case 0xFF000000: // black
    break;
  case 0xFF796F48: // brown
    pushDirection();
    break;
  default:
    swap.swap();
    break;
  }
  winCheck();
}

void pushDirection() {
  if (storedIndexY == y) {
    if (storedIndexX-x > 0) {
      if (colors[cellsWide*y+(x-1)] == 0xFFFFFFFF) {
        pushLeft.shove();
        swap.swap();
      }
    } else {
      if (colors[cellsWide*y+x+1] == 0xFFFFFFFF) {
        pushRight.shove();
        swap.swap();
      }
    }
  } else {
    if (storedIndexY-y > 0) {
      if (colors[cellsWide*(y-1)+x] == 0xFFFFFFFF) {
        pushUp.shove();
        swap.swap();
      }
    } else {
      if (colors[cellsWide*(y+1)+x] == 0xFFFFFFFF) {
        pushDown.shove();
        swap.swap();
      }
    }
  }
}

class Logic {
  int storedColor, index1, index2;
  Logic(int Index1, int Index2) {
    index1 = Index1;
    index2 = Index2;
  }
  void shove() {
    // swap colors
    storedColor = colors[cellsWide*y+x];
    colors[cellsWide*y+x] = colors[cellsWide*(y+index2)+(x+index1)];
    colors[cellsWide*(y+index2)+(x+index1)] = storedColor;
    // redraw the cells
    fill(colors[cellsWide*(y+index2)+(x+index1)]);
    rect(xPositions[x+index1], yPositions[y+index2], cellWidth, cellHeight);
    fill(colors[cellsWide*y+x]);
    rect(xPositions[x], yPositions[y], cellWidth, cellHeight);
    numPush++;
  }
  void swap() {
    // swap colors
    storedColor = colors[cellsWide*storedIndexY+storedIndexX];
    colors[cellsWide*storedIndexY+storedIndexX] = colors[cellsWide*y+x];
    colors[cellsWide*y+x] = storedColor;
    // redraw the cells
    fill(colors[cellsWide*storedIndexY+storedIndexX]);
    rect(xPositions[storedIndexX], yPositions[storedIndexY], cellWidth, cellHeight);
    fill(colors[cellsWide*y+x]);
    rect(xPositions[x], yPositions[y], cellWidth, cellHeight);
    // update indexes
    storedIndexX = x;
    storedIndexY = y;
    numMoves++;
  }
}
