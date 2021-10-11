void baseLogic() {
  for (X = 0; X < boxesWide; X++) {
    for (Y = 0; Y < 9; Y++) {
      if (pmouseX > xPositions[X] && pmouseY > yPositions[Y] && pmouseX < xPositions[X+1] && pmouseY < yPositions[Y+1] && abs(storedXIndex-X)+abs(storedYIndex-Y) == 1) {
        switch(colors[boxesWide*Y+X]) {
        case 0xFF000000: 
          break;
        case 0xFF796F48: 
          pushDirection();
          winCheck();
          break;
        default:
          swap.swap();
        }
      }
    }
  }
}

void dPadLogic() {
  switch(colors[boxesWide*Y+X]) {
  case 0xFF000000: 
    break;
  case 0xFF796F48: 
    pushDirection();
    winCheck();
    break;
  default:
    swap.swap();
  }
}

void pushDirection() {
  if (storedYIndex == Y) {
    if (storedXIndex-X > 0) {
      if (colors[boxesWide*Y+(X-1)] == 0xFFFFFFFF) {
        pushLeft.push();
      }
    } else {
      if (colors[boxesWide*Y+X+1] == 0xFFFFFFFF) {
        pushRight.push();
      }
    }
  } else {
    if (storedYIndex-Y > 0) {
      if (colors[boxesWide*(Y-1)+X] == 0xFFFFFFFF) {
        pushUp.push();
      }
    } else {
      if (colors[boxesWide*(Y+1)+X] == 0xFFFFFFFF) {
        pushDown.push();
      }
    }
  }
}

class Logic {
  int storedColor, offsetX, offsetY;
  Logic(int offset1, int offset2) {
    offsetX = offset1;
    offsetY = offset2;
  }
  void push() {
    // swap colors
    storedColor = colors[boxesWide*Y+X];
    colors[boxesWide*Y+X] = colors[boxesWide*(Y+offsetY)+(X+offsetX)];
    colors[boxesWide*(Y+offsetY)+(X+offsetX)] = storedColor;
    // redraw the cells
    fill(colors[boxesWide*(Y+offsetY)+(X+offsetX)]);
    stroke(colors[boxesWide*(Y+offsetY)+(X+offsetX)]);
    rect(xPositions[X+offsetX], yPositions[Y+offsetY], boxWidth, boxHeight);
    fill(colors[boxesWide*Y+X]);
    stroke(colors[boxesWide*Y+X]);
    rect(xPositions[X], yPositions[Y], boxWidth, boxHeight);
    pushNumber++;
    swap.swap();
  }
  void swap() {
    // swap colors
    storedColor = colors[boxesWide*storedYIndex+storedXIndex];
    colors[boxesWide*storedYIndex+storedXIndex] = colors[boxesWide*Y+X];
    colors[boxesWide*Y+X] = storedColor;
    // redraw the cells
    fill(colors[boxesWide*storedYIndex+storedXIndex]);
    stroke(colors[boxesWide*storedYIndex+storedXIndex]);
    rect(xPositions[storedXIndex], yPositions[storedYIndex], boxWidth, boxHeight);
    fill(colors[boxesWide*Y+X]);
    stroke(colors[boxesWide*Y+X]);
    rect(xPositions[X], yPositions[Y], boxWidth, boxHeight);
    stroke(black);
    // update indexes
    storedXIndex = X;
    storedYIndex = Y;
    moveNumber++;
    goals();
  }
}

void win() {
  levelIndex++;
  setupLevel();
}
