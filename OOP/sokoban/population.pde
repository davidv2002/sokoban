void population() {
  black = 0xFF000000;
  red = 0xFFFF0000;
  brown = 0xFF796F48;
  yellow = 0xFFF9FC3B;
  white = 0xFFFFFFFF;
  cellsWide = 9;
  background = loadImage("Background.jpg");
  font = createFont("Microsoft Sans Serif", 80);
  colors = new int[int(sq(cellsWide))];
  xPositions = new float[cellsWide+1];
  yPositions = new float[xPositions.length];
  populationResize();
  dataLoad();
  popSound();
}
void dataLoad() {
  levelData = loadBytes("levels/levels.dat");
  dataOffsets = new int[0];
  for (int i = 0; i < levelData.length; i++) {
    if (levelData[i] == -1) {
      dataOffsets = append(dataOffsets, i);
    }
  }
}

void populationResize() {
  gameHeight = height-width/8.0;
  heightOffset = height-gameHeight;
  boxWidth = width/cellsWide;
  boxHeight = gameHeight/cellsWide;
  goalOffsetX = boxWidth/2;
  goalOffsetY = boxHeight/2;
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = width*((i*1.0)/cellsWide);
    yPositions[i] = gameHeight*((i*1.0)/cellsWide);
  }
  if (width < height) {
    goalDiameter = boxWidth*0.75;
    fontSize = width/30;
  } else {
    goalDiameter = boxHeight*0.75;
    fontSize = height/30;
  }
}
