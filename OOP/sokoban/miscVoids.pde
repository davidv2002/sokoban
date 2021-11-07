void load() {
  for (int i = 0; i < colors.length; i++) 
  {
    switch(data[i]) {
    case 0:
      colors[i] = black;
      break;
    case 1:
      colors[i] = white;
      break;
    case 2:
      colors[i] = brown;
      break;
    case 3:
      colors[i] = red;
    }
  }
  storedXIndex = data[81];
  storedYIndex = data[82];
}

void panelTests() {
  quitTest = (pmouseX > heightOffset*7);
  restartTest = (pmouseX > heightOffset*6 && pmouseX < heightOffset*7);
  nextTest = (pmouseX > heightOffset*5 && pmouseX < heightOffset*6 && levelIndex != 9);
  lastTest = (pmouseX > heightOffset*4 && pmouseX < heightOffset*5 && levelIndex != 0);
  soundTest = (pmouseX > heightOffset*3 && pmouseX < heightOffset*4);
}

void win() {
  winSound();
  levelIndex++;
  setupLevel();
}
