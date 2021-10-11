void population() {
  black = 0xFF000000;
  red = 0xFFff0000;
  brown = 0xFF796F48;
  yellow = 0xFFF9FC3B;
  white = 0xFFFFFFFF;
  gameHeight = height-width/8.0;
  heightOffset = height-gameHeight;
  background = loadImage("Background.jpg");
  font = createFont("Microsoft Sans Serif", 80);
  swipe = false;
  boxWidth = width/boxesWide*1.0;
  boxHeight = gameHeight/9.0;
  goalOffsetX = boxWidth/2;
  goalOffsetY = boxHeight/2;
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = width*((i*1.0)/boxesWide);
  }
  for (int i = 0; i < yPositions.length; i++) {
    yPositions[i] = gameHeight*((i/9.0));
  }
  panelPopulation();
  goalDiameter = boxHeight*0.75;
  fontSize = height/30;
}

void panelTextPopulation() {
  level = "Level\n"+(levelIndex+1);
  moves = "Moves\n"+moveNumber;
  pushes = "Pushes\n"+pushNumber;
}

void panelPopulation() {
  quitTest = (pmouseX > heightOffset*7);
  restartTest = (pmouseX > heightOffset*6 && pmouseX < heightOffset*7);
  nextTest = (pmouseX > heightOffset*5 && pmouseX < heightOffset*6 && levelIndex != 9);
  lastTest = (pmouseX > heightOffset*4 && pmouseX < heightOffset*5 && levelIndex != 0);
  swipeTest = (pmouseX > heightOffset*3 && pmouseX < heightOffset*4);
}
