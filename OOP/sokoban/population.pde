void population() {
  black = #000000;
  red = #ff0000;
  brown = #796F48;
  yellow = #F9FC3B;
  white = #ffffff;
  gameHeight = height*0.8;
  heightOffset = height-gameHeight;
  pic = loadImage("1.jpg");
  buttonFont = createFont ("Microsoft Sans Serif", 80);
}

void buildMatrix() {
  // width and hight for the cells
  cellWidth = width/cellsWide;
  cellHeight = gameHeight/cellsTall;
  // x cords of matrix
  for (int i = 0; i < XPositions.length; i++) {
    XPositions[i] = width*((i*1.0)/cellsWide);
  }
  // y cords of matrix
  for (int i = 0; i < YPositions.length; i++) {
    YPositions[i] = gameHeight*((i*1.0)/cellsTall);
  }
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
