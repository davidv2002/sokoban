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

void interfacePop() {
  level = "level\n"+(levelIndex+1);
}
