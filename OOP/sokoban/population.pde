void population() {
  black = 0xFF000000;
  red = 0xFFFF0000;
  brown = 0xFF796F48;
  yellow = 0xFFF9FC3B;
  white = 0xFFFFFFFF;
  gameHeight = height*0.8;
  heightOffset = height-gameHeight;
  pic = loadImage("1.jpg");
  buttonFont = createFont("Microsoft Sans Serif", 80);
  cellWidth = width/cellsWide;
  cellHeight = gameHeight/9;
  // x cords of matrix
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = width*((i*1.0)/cellsWide);
  }
  // y cords of matrix
  for (int i = 0; i < yPositions.length; i++) {
    yPositions[i] = gameHeight*(i/9.0);
  }
  // sound
  minim = new Minim(this);
  song1 = minim.loadFile("Beat_Your_Competition.mp3");
  song2 = minim.loadFile("Glass_and_Metal_Collision.mp3");
  song3 = minim.loadFile("Slide.mp3");
  song4 = minim.loadFile("Magic_Chime.mp3");
  mute = true;
  panelPopulation();
}

void panalTextPopulation() {
  level = "level\n"+(levelIndex+1);
  moves = "moves\n"+numMoves;
  pushes = "pushes\n"+numPush;
}

void panelPopulation() {
  quitTest = (pmouseX > width-heightOffset);
  restartTest = (pmouseX > width-heightOffset*2 && pmouseX < width-heightOffset);
  nextTest = (pmouseX > width-heightOffset*2.5 && pmouseX < width-heightOffset*2 && pmouseY < gameHeight+heightOffset/2 && levelIndex != 9);
  lastTest = (pmouseX > width-heightOffset*2.5 && pmouseX < width-heightOffset*2 && pmouseY > gameHeight+heightOffset/2 && levelIndex != 0);
  muteTest = (pmouseX > width-heightOffset*3.5 && pmouseX < width-heightOffset*2.5);
}
