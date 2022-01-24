void baseLogic() {
  for (X = 0; X < (cellsWide); X++) {
    for (Y = 0; Y < 9; Y++) {
      // is the clicked cell one of the cell right next to the player
      if (pmouseX > xPositions[X] && pmouseY > yPositions[Y] && pmouseX < xPositions[X+1] && pmouseY < yPositions[Y+1] && abs(storedXIndex-X)+abs(storedYIndex-Y) == 1) {
        logicSwitch();
      }
    }
  }
}

// what type of cell was clicked
void logicSwitch() {
  switch(colors[cellsWide*Y+X]) {
    // wall
  case 0xFF000000: 
    wallSound();
    break;
    // box
  case 0xFF796F48: 
    pushDirection();
    winCheck();
    break;
    // empty
  default:
    swap.swap();
  }
}

// what direction are you trying to push the box in and is the box blocked by a wall
void pushDirection() {
  if (storedYIndex == Y) {
    if (storedXIndex-X > 0) {
      if (colors[cellsWide*Y+(X-1)] == white) {
        pushLeft.push();
      } else {
        wallSound();
      }
    } else {
      if (colors[cellsWide*Y+X+1] == white) {
        pushRight.push();
      } else {
        wallSound();
      }
    }
  } else {
    if (storedYIndex-Y > 0) {
      if (colors[cellsWide*(Y-1)+X] == white) {
        pushUp.push();
      } else {
        wallSound();
      }
    } else {
      if (colors[cellsWide*(Y+1)+X] == white) {
        pushDown.push();
      } else {
        wallSound();
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
    storedColor = colors[cellsWide*Y+X];
    colors[cellsWide*Y+X] = colors[cellsWide*(Y+offsetY)+(X+offsetX)];
    colors[cellsWide*(Y+offsetY)+(X+offsetX)] = storedColor;
    // redraw the cells
    fill(colors[cellsWide*(Y+offsetY)+(X+offsetX)]);
    stroke(colors[cellsWide*(Y+offsetY)+(X+offsetX)]);
    rect(xPositions[X+offsetX], yPositions[Y+offsetY], boxWidth, boxHeight);
    fill(colors[cellsWide*Y+X]);
    stroke(colors[cellsWide*Y+X]);
    rect(xPositions[X], yPositions[Y], boxWidth, boxHeight);
    pushNumber++;
    pushSound();
    swap.swap();
  }
  void swap() {
    // swap colors
    storedColor = colors[cellsWide*storedYIndex+storedXIndex];
    colors[cellsWide*storedYIndex+storedXIndex] = colors[cellsWide*Y+X];
    colors[cellsWide*Y+X] = storedColor;
    // redraw the cells
    fill(colors[cellsWide*storedYIndex+storedXIndex]);
    stroke(colors[cellsWide*storedYIndex+storedXIndex]);
    rect(xPositions[storedXIndex], yPositions[storedYIndex], boxWidth, boxHeight);
    fill(colors[cellsWide*Y+X]);
    stroke(colors[cellsWide*Y+X]);
    rect(xPositions[X], yPositions[Y], boxWidth, boxHeight);
    goals();
    // update indexes
    storedXIndex = X;
    storedYIndex = Y;
    moveNumber++;
    panel();
  }
}
