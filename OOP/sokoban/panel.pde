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
  textAlign(CENTER, CENTER);
  textFont(buttonFont, fontSize);
  text(level, 0, gameHeight, heightOffset, heightOffset);
  text(moves, heightOffset, gameHeight, heightOffset, heightOffset);
  text(pushes, heightOffset*2, gameHeight, heightOffset, heightOffset);
  text("Mute", heightOffset*3, gameHeight, heightOffset, heightOffset);
  text("Last\n Level", heightOffset*4, gameHeight, heightOffset, heightOffset);
  text("Next\n Level", heightOffset*5, gameHeight, heightOffset, heightOffset);
  text("Restart\n Level", heightOffset*6, gameHeight, heightOffset, heightOffset);
  text("Quit\n Playing", heightOffset*7, gameHeight, heightOffset, heightOffset);
}

void panelClick() {
  panelPopulation();
  if (restartTest) {
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
  if (muteTest) {
    song();
    return;
  }
  if (quitTest) {
    exit();
  }
}
