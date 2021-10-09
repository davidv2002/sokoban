void panel() {
  fill(white);
  square(0, gameHeight, heightOffset);
  square(heightOffset, gameHeight, heightOffset);
  square(heightOffset*2, gameHeight, heightOffset);
  square(heightOffset*3, gameHeight, heightOffset);
  square(heightOffset*4, gameHeight, heightOffset);
  square(heightOffset*5, gameHeight, heightOffset);
  square(heightOffset*6, gameHeight, heightOffset);
  square(heightOffset*7, gameHeight, heightOffset);
  fill(black);
  textFont(font, fontSize);
  text(level, 0, gameHeight, heightOffset, heightOffset);
  text(moves, heightOffset, gameHeight, heightOffset, heightOffset);
  text(pushes, heightOffset*2, gameHeight, heightOffset, heightOffset);
  if (sound) {
    text("Mute", heightOffset*3, gameHeight, heightOffset, heightOffset);
  } else {
    text("Unmute", heightOffset*3, gameHeight, heightOffset, heightOffset);
  }
  if (levelIndex != 0) {
    text("Last\n Level", heightOffset*4, gameHeight, heightOffset, heightOffset);
  }
  if (levelIndex != 9) {
    text("Next\n Level", heightOffset*5, gameHeight, heightOffset, heightOffset);
  }
  if (moveNumber > 0) {
    text("Restart\n Level", heightOffset*6, gameHeight, heightOffset, heightOffset);
  }
  text("Quit\n Playing", heightOffset*7, gameHeight, heightOffset, heightOffset);
}

void panelClick() {
  panelPopulation();
  if (restartTest && moveNumber > 0) {
    setupLevel();
    return;
  } 
  if (nextTest) {
    levelIndex++;
    setupLevel();
    return;
  } 
  if (lastTest) {
    levelIndex--;
    setupLevel();
    return;
  } 
  if (soundTest) {
    song();
    return;
  }
  if (quitTest) {
    exit();
  }
}
