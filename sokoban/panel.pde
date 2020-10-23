void panel() {
  panelPopulation();
  fill(white);
  square(0, gameHeight, heightOffset);
  square(heightOffset, gameHeight, heightOffset);
  square(heightOffset*2, gameHeight, heightOffset);

  square(width-heightOffset*2, gameHeight, heightOffset);
  square(width-heightOffset, gameHeight, heightOffset);

  fill(black);
  textAlign (CENTER, CENTER);
  textFont(buttonFont, height/20);
  text(level, 0, gameHeight, heightOffset, heightOffset);
  text(moves, heightOffset, gameHeight, heightOffset, heightOffset);
  text(pushes, heightOffset*2, gameHeight, heightOffset, heightOffset);

  text("restart level", width-heightOffset*2, gameHeight, heightOffset, heightOffset);
  text("quit playing", width-heightOffset, gameHeight, heightOffset, heightOffset);
}

void panelClick() {
  if ( restartTest == true) {
    setupLevel();
  } else if ( quitTest == true) {
    exit();
  }
}
