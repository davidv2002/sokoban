void population() {
  black = 0xFF000000;
  red = 0xFFff0000;
  brown = 0xFF796F48;
  yellow = 0xFFF9FC3B;
  white = 0xFFFFFFFF;
  gameHeight = height-width/8;
  heightOffset = height-gameHeight;
  pic = loadImage("1.jpg");
  buttonFont = createFont("Microsoft Sans Serif", 80);
  swipe = false;
  cellWidth = width/cellsWide;
  cellHeight = gameHeight/cellsTall;
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = width*((i*1.0)/cellsWide);
  }
  for (int i = 0; i < yPositions.length; i++) {
    yPositions[i] = gameHeight*((i*1.0)/cellsTall);
  }
  panelPopulation();
}

void panelTextPopulation() {
  level = "Level\n"+(levelIndex+1);
  moves = "Moves\n"+numMoves;
  pushes = "Pushes\n"+numPush;
}

void panelPopulation() {
  quitTest = (pmouseX > heightOffset*7);
  restartTest = (pmouseX > heightOffset*6 && pmouseX < heightOffset*7);
  nextTest = (pmouseX > heightOffset*5 && pmouseX < heightOffset*6 && levelIndex != 9);
  lastTest = (pmouseX > heightOffset*4 && pmouseX < heightOffset*5 && levelIndex != 0);
  swipeTest = (pmouseX > heightOffset*3 && pmouseX < heightOffset*4);
}
