void population() {
  black = 0xFF000000;
  red = 0xFFFF0000;
  brown = 0xFF796F48;
  yellow = 0xFFF9FC3B;
  white = 0xFFFFFFFF;
  pic = loadImage("1.jpg");
  buttonFont = createFont("Microsoft Sans Serif", 80);
  populationResize();
  minim = new Minim(this);
  song1 = minim.loadFile("Beat_Your_Competition.mp3");
  song2 = minim.loadFile("Glass_and_Metal_Collision.mp3");
  song3 = minim.loadFile("Slide.mp3");
  song4 = minim.loadFile("Magic_Chime.mp3");
  mute = true;
  panelPopulation();
}

void panalTextPopulation() {
  level = "Level\n"+(levelIndex+1);
  moves = "Moves\n"+numMoves;
  pushes = "Pushes\n"+numPush;
}

void panelPopulation() {
  quitTest = (pmouseX > heightOffset*7);
  restartTest = (pmouseX > heightOffset*6 && pmouseX < heightOffset*7);
  nextTest = (pmouseX > heightOffset*5 && pmouseX < heightOffset*6 && levelIndex != 9);
  lastTest = (pmouseX > heightOffset*4 && pmouseX < heightOffset*5 && levelIndex != 0);
  muteTest = (pmouseX > heightOffset*3 && pmouseX < heightOffset*4);
}

void populationResize() {
  gameHeight = height-width/8;
  heightOffset = height-gameHeight;
  cellWidth = width/cellsWide;
  cellHeight = gameHeight/9;
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = width*((i*1.0)/cellsWide);
  }
  for (int i = 0; i < yPositions.length; i++) {
    yPositions[i] = gameHeight*(i/9.0);
  }
  if (width > height) {
    goalSize = cellWidth/2.5;
    fontSize = width/30;
  } else {
    goalSize = cellHeight/2.5;
    fontSize = height/30;
  }
}
