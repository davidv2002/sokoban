void panel() {
  fill(white);
  // draw the squares for the interface
  for (int i = 0; i < 8; i++) {
    square(heightOffset*i, gameHeight, heightOffset);
  }
  fill(black);
  textFont(font, fontSize);
  text("Empty", 0, gameHeight, heightOffset, heightOffset);
  text("Player", heightOffset, gameHeight, heightOffset, heightOffset);
  text("Box", heightOffset*2, gameHeight, heightOffset, heightOffset);
  text("Wall", heightOffset*3, gameHeight, heightOffset, heightOffset);
  text("Goal", heightOffset*4, gameHeight, heightOffset, heightOffset);
  text("Reset", heightOffset*5, gameHeight, heightOffset, heightOffset);
  text("Export", heightOffset*6, gameHeight, heightOffset, heightOffset);
  text("Quit", heightOffset*7, gameHeight, heightOffset, heightOffset);
}

void panelClick() {
  if (pmouseX < heightOffset) {
    println("empty");
    return;
  }
  if (pmouseX > heightOffset && pmouseX < heightOffset*2) {
    println("player");
    return;
  }
  if (pmouseX > heightOffset*2 && pmouseX < heightOffset*3) {
    println("box");
    return;
  }
  if (pmouseX > heightOffset*3 && pmouseX < heightOffset*4) {
    println("wall");
    return;
  }
  if (pmouseX > heightOffset*4 && pmouseX < heightOffset*5) {
    println("goal");
    return;
  } 
  if (pmouseX > heightOffset*5 && pmouseX < heightOffset*6) {
    println("reset");
    reset();
    return;
  } 
  if (pmouseX > heightOffset*6 && pmouseX < heightOffset*7) {
    println("export");
    return;
  } 
  if (pmouseX > heightOffset*7) {
    exit();
  }
}
