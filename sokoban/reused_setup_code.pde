void setupLevel() {
  switch(levelIndex) {
  case 0:
    level0();
    break;
  case 1:
    level1();
    break;
  default:
    exit();
  }
  image(pic, 0, 0, width, height);
  drawLevel();
}
