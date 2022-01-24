void panel() {
  fill(white);
  // draw the squares for the interface
  for (int i = 0; i < 8; i++) {
    square(heightOffset*i, gameHeight, heightOffset);
  }
  fill(black);
  textFont(font, fontSize);
  text("Level\n"+(levelIndex+1), 0, gameHeight, heightOffset, heightOffset);
  text("Moves\n"+moveNumber, heightOffset, gameHeight, heightOffset, heightOffset);
  text("Pushes\n"+pushNumber, heightOffset*2, gameHeight, heightOffset, heightOffset);
  if (sound) {
    text("Mute", heightOffset*3, gameHeight, heightOffset, heightOffset);
  } else {
    text("Unmute", heightOffset*3, gameHeight, heightOffset, heightOffset);
  }
  if (levelIndex != 0) {
    text("Last\n Level", heightOffset*4, gameHeight, heightOffset, heightOffset);
  }
  if (levelIndex < dataOffsets.length-1) {
    text("Next\n Level", heightOffset*5, gameHeight, heightOffset, heightOffset);
  }
  if (moveNumber > 0) {
    text("Restart\n Level", heightOffset*6, gameHeight, heightOffset, heightOffset);
  }
  text("Quit\n Playing", heightOffset*7, gameHeight, heightOffset, heightOffset);
}

void panelClick() {
  if (pmouseX > heightOffset*6 && pmouseX < heightOffset*7 && moveNumber > 0) {
    setupLevel();
    return;
  } 
  if (pmouseX > heightOffset*5 && pmouseX < heightOffset*6 && levelIndex < dataOffsets.length-1) {
    levelIndex++;
    setupLevel();
    return;
  } 
  if (pmouseX > heightOffset*4 && pmouseX < heightOffset*5 && levelIndex != 0) {
    levelIndex--;
    setupLevel();
    return;
  } 
  if (pmouseX > heightOffset*3 && pmouseX < heightOffset*4) {
    song();
    return;
  }
  if (pmouseX > heightOffset*7) {
    exit();
  }
}
