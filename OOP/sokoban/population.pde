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
  minim = new Minim(this);
  song0 = minim.loadFile("Beat_Your_Competition.mp3");
  effect0 = minim.loadFile("Hit.mp3");
  effect1 = minim.loadFile("Push.mp3");
  effect2 = minim.loadFile("Win.mp3");
  sound = true;
  panelTextPopulation();
}

void panelTextPopulation() {
  level = "Level\n"+(levelIndex+1);
  moves = "Moves\n"+moveNumber;
  pushes = "Pushes\n"+pushNumber;
}

void populationResize() {
  gameHeight = height-width/8.0;
  heightOffset = height-gameHeight;
  boxWidth = width/cellsWide;
  boxHeight = gameHeight/9;
  goalOffsetX = boxWidth/2;
  goalOffsetY = boxHeight/2;
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = width*((i*1.0)/cellsWide);
  }
  for (int i = 0; i < yPositions.length; i++) {
    yPositions[i] = gameHeight*(i/9.0);
  }
  if (width < height) {
    goalDiameter = boxWidth*0.75;
    fontSize = width/30;
  } else {
    goalDiameter = boxHeight*0.75;
    fontSize = height/30;
  }
}
