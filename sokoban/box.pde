void pushDirection() {
  if (storedIndexY == y) {
    println("left or right");
    if (storedIndexX-x > 0) {
      println("push left");
    } else {
      println("push right");
    }
  } else {
    println("up or down");
    if (storedIndexY-y > 0) {
      println("push up");
    } else {
      println("push down");
    }
  }
}
