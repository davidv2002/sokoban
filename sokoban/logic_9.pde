/**
 black = walls
 red = player
 brown = box
 */

void baseLogicBig() {
  for ( x = 0; x < cellsWideBig; x++) {
    for ( y = 0; y < cellsTallBig; y++) {
      if (pmouseX>XPositionsBig[x] && pmouseY>YPositionsBig[y] && pmouseX<XPositionsBig[x+1] && pmouseY<YPositionsBig[y+1] && abs(storedIndexX-x)+abs(storedIndexY-y) == 1) {
        switch(ColorsBig[cellsWideBig*y+x]) {
        case #000000: // black
          break;
        case #796F48: // brown
          pushDirectionBig();
          break;
        default:
          swapBig();
          break;
        }
      }
    }
  }
}

void swapBig() {
  // swap colors
  storedColor = ColorsBig[cellsWideBig*storedIndexY+storedIndexX];
  ColorsBig[cellsWideBig*storedIndexY+storedIndexX] = ColorsBig[cellsWideBig*y+x];
  ColorsBig[cellsWideBig*y+x] = storedColor;
  // redraw the cells
  fill( ColorsBig[cellsWideBig*storedIndexY+storedIndexX]);
  rect( XPositionsBig[storedIndexX], YPositionsBig[storedIndexY], cellWidthBig, cellHeightBig);
  fill( ColorsBig[cellsWideBig*y+x]);
  rect( XPositionsBig[x], YPositionsBig[y], cellWidthBig, cellHeightBig);
  // update indexes
  storedIndexX = x;
  storedIndexY = y;
  numMoves++;
}

void pushDirectionBig() {
  if (storedIndexY == y) {
    if (storedIndexX-x > 0) {
      if (ColorsBig[cellsWideBig*y+(x-1)] == #000000) {
      } else if (ColorsBig[cellsWideBig*y+(x-1)] == #796F48) {
      } else {
        pushLeftBig();
        numPush++;
        swapBig();
      }
    } else {
      if (ColorsBig[cellsWideBig*y+x+1] == #000000) {
      } else if (ColorsBig[cellsWideBig*y+x+1] == #796F48) {
      } else {
        pushRightBig();
        numPush++;
        swapBig();
      }
    }
  } else {
    if (storedIndexY-y > 0) {
      if (ColorsBig[cellsWideBig*(y-1)+x] == #000000) {
      } else if (ColorsBig[cellsWideBig*(y-1)+x] == #796F48) {
      } else {
        pushUpBig();
        numPush++;
        swapBig();
      }
    } else {
      if (ColorsBig[cellsWideBig*(y+1)+x] == #000000) {
      } else if (ColorsBig[cellsWideBig*(y+1)+x] == #796F48) {
      } else {
        pushDownBig();
        numPush++;
        swapBig();
      }
    }
  }
}

void pushLeftBig() {
  // swap colors
  storedColor = ColorsBig[cellsWideBig*y+x];
  ColorsBig[cellsWideBig*y+x] = ColorsBig[cellsWideBig*y+(x-1)];
  ColorsBig[cellsWideBig*y+(x-1)] = storedColor;
  // redraw the cells
  fill( ColorsBig[cellsWideBig*y+(x-1)]);
  rect( XPositionsBig[x-1], YPositionsBig[y], cellWidthBig, cellHeightBig);
  fill( ColorsBig[cellsWideBig*y+x]);
  rect( XPositionsBig[x], YPositionsBig[y], cellWidthBig, cellHeightBig);
}

void pushRightBig() {
  // swap colors
  storedColor = ColorsBig[cellsWideBig*y+x];
  ColorsBig[cellsWideBig*y+x] = ColorsBig[cellsWideBig*y+x+1];
  ColorsBig[cellsWideBig*y+x+1] = storedColor;
  // redraw the cells
  fill( ColorsBig[cellsWideBig*y+x+1]);
  rect( XPositionsBig[x+1], YPositionsBig[y], cellWidthBig, cellHeightBig);
  fill( ColorsBig[cellsWideBig*y+x]);
  rect( XPositionsBig[x], YPositionsBig[y], cellWidthBig, cellHeightBig);
}

void pushUpBig() {
  // swap colors
  storedColor = ColorsBig[cellsWideBig*y+x];
  ColorsBig[cellsWideBig*y+x] = ColorsBig[cellsWideBig*(y-1)+x];
  ColorsBig[cellsWideBig*(y-1)+x] = storedColor;
  // redraw the cells
  fill( ColorsBig[cellsWideBig*(y-1)+x]);
  rect( XPositionsBig[x], YPositionsBig[y-1], cellWidthBig, cellHeightBig);
  fill( ColorsBig[cellsWideBig*y+x]);
  rect( XPositionsBig[x], YPositionsBig[y], cellWidthBig, cellHeightBig);
}

void pushDownBig() {
  // swap colors
  storedColor = ColorsBig[cellsWideBig*y+x];
  ColorsBig[cellsWideBig*y+x] = ColorsBig[cellsWideBig*(y+1)+x];
  ColorsBig[cellsWideBig*(y+1)+x] = storedColor;
  // redraw the cells
  fill( ColorsBig[cellsWideBig*(y+1)+x]);
  rect( XPositionsBig[x], YPositionsBig[y+1], cellWidthBig, cellHeightBig);
  fill( ColorsBig[cellsWideBig*y+x]);
  rect( XPositionsBig[x], YPositionsBig[y], cellWidthBig, cellHeightBig);
}
