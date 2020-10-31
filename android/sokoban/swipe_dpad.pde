void onFlick( float xs, float ys, float px, float py, float v) {
  if (swipe == true) {
    xDif = px - xs;
    yDif = py - ys;
    if (abs(xDif) > abs(yDif)) {
      if (xDif > 0) {
        println("left");
        x =storedIndexX-1;
        y = storedIndexY;
        dPadLogic();
      } else {
        println("right");
        x =storedIndexX+1;
        y = storedIndexY;
        dPadLogic();
      }
    } else {
      if (yDif > 0) {
        println("up");
        x =storedIndexX;
        y = storedIndexY-1;
        dPadLogic();
      } else {
        println("down");
        x =storedIndexX;
        y = storedIndexY+1;
        dPadLogic();
      }
    }
  }
}
