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
  textFont(buttonFont, height/20);
  text(level, 0, gameHeight, heightOffset, heightOffset);
  text(moves, heightOffset, gameHeight, heightOffset, heightOffset);
  text(pushes, heightOffset*2, gameHeight, heightOffset, heightOffset);
  if (swipe == true) {
    text("Click Mode", heightOffset*3, gameHeight, heightOffset, heightOffset);
  } else {
    text("Swipe Mode", heightOffset*3, gameHeight, heightOffset, heightOffset);
  }
  text("Last Level", heightOffset*4, gameHeight, heightOffset, heightOffset);
  text("Next Level", heightOffset*5, gameHeight, heightOffset, heightOffset);
  text("Restart Level", heightOffset*6, gameHeight, heightOffset, heightOffset);
  text("Quit Playing", heightOffset*7, gameHeight, heightOffset, heightOffset);
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
  if (swipeTest) {
    if (swipe) {
      swipe = false;
      return;
    } else {
      swipe = true;
      return;
    }
  } 
  if (quitTest) {
    exit();
  }
}
