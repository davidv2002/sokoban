void dPad() {
  switch(keyCode) {
  case UP:
    x =storedIndexX;
    y = storedIndexY-1;
    dPadLogic();
    break;
  case DOWN:
    x =storedIndexX;
    y = storedIndexY+1;
    dPadLogic();
    break;
  case LEFT:
    x =storedIndexX-1;
    y = storedIndexY;
    dPadLogic();
    break;
  case RIGHT:
    x =storedIndexX+1;
    y = storedIndexY;
    dPadLogic();
    break;
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
    swap();
    break;
  }
}
