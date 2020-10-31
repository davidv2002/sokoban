void panel() {
  fill(white);
  square(0, gameHeight, heightOffset);
  square(heightOffset, gameHeight, heightOffset);
  square(heightOffset*2, gameHeight, heightOffset);
  square(width-heightOffset*3.5, gameHeight, heightOffset);
  square(width-heightOffset*2.5, gameHeight, heightOffset/2);
  square(width-heightOffset*2.5, gameHeight+heightOffset/2, heightOffset/2);
  square(width-heightOffset*2, gameHeight, heightOffset);
  square(width-heightOffset, gameHeight, heightOffset);
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, height/20);
  text(level, 0, gameHeight, heightOffset, heightOffset);
  text(moves, heightOffset, gameHeight, heightOffset, heightOffset);
  text(pushes, heightOffset*2, gameHeight, heightOffset, heightOffset);
  text("Mute", width-heightOffset*3.5, gameHeight, heightOffset, heightOffset);
  text("Restart Level", width-heightOffset*2, gameHeight, heightOffset, heightOffset);
  text("Quit Playing", width-heightOffset, gameHeight, heightOffset, heightOffset);
  textFont(buttonFont, height/30);
  text("Next Level", width-heightOffset*2.5, gameHeight, heightOffset/2, heightOffset/2);
  text("Last Level", width-heightOffset*2.5, gameHeight+heightOffset/2, heightOffset/2, heightOffset/2);
}

void panelClick() {
  panelPopulation();
  if (restartTest == true) {
    setupLevel();
  } else if (nextTest == true) {
    levelIndex++;
    setupLevel();
  } else if (lastTest == true) {
    levelIndex--;
    setupLevel();
  } else if (muteTest == true) {
    song();
  } else if (quitTest == true) {
    exit();
  }
}
