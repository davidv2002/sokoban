void setupLevel() {
  switch(levelIndex) {
  case 0:
    level0();
    break;
  case 1:
    level1();
    break;
  case 2:
    level2();
    break;
  case 10:
    level10();
    break;
  default:
    exit();
  }
  image(pic, 0, 0, width, height);
  drawLevel();
}
