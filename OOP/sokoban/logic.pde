void baseLogic() {
  for ( x = 0; x < cellsWide; x++) {
    for ( y = 0; y < cellsTall; y++) {
      if (pmouseX>XPositions[x] && pmouseY>YPositions[y] && pmouseX<XPositions[x+1] && pmouseY<YPositions[y+1] && abs(storedIndexX-x)+abs(storedIndexY-y) == 1) {
        switch(Colors[cellsWide*y+x]) {
        case #000000: // black
          wallSound();
          break;
        case #796F48: // brown
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
  switch(Colors[cellsWide*y+x]) {
  case #000000: // black
    wallSound();
    break;
  case #796F48: // brown
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
      if (Colors[cellsWide*y+(x-1)] == #FFFFFF) {
        pushLeft.shove();
        swap.swap();
      } else {
        wallSound();
      }
    } else {
      if (Colors[cellsWide*y+x+1] == #FFFFFF) {
        pushRight.shove();
        swap.swap();
      } else {
        wallSound();
      }
    }
  } else {
    if (storedIndexY-y > 0) {
      if (Colors[cellsWide*(y-1)+x] == #FFFFFF) {
        pushUp.shove();
        swap.swap();
      } else {
        wallSound();
      }
    } else {
      if (Colors[cellsWide*(y+1)+x] == #FFFFFF) {
        pushDown.shove();
        swap.swap();
      } else {
        wallSound();
      }
    }
  }
}

class Logic {
  int storedColor, index1, index2;
  Logic (int Index1, int Index2) {
    index1 = Index1;
    index2 = Index2;
  }
  void shove() {
    // swap colors
    storedColor = Colors[cellsWide*y+x];
    Colors[cellsWide*y+x] = Colors[cellsWide*(y+index2)+(x+index1)];
    Colors[cellsWide*(y+index2)+(x+index1)] = storedColor;
    // redraw the cells
    fill( Colors[cellsWide*(y+index2)+(x+index1)]);
    rect( XPositions[x+index1], YPositions[y+index2], cellWidth, cellHeight);
    fill( Colors[cellsWide*y+x]);
    rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
    numPush++;
    if (mute == true) {
    } else {
      song3.play();
      song3.rewind();
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
}
