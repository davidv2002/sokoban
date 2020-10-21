void population() {
  storedIndexX = 1;
  storedIndexY = 3;
  black = color(0, 0, 0);
  red = color(255, 0, 0);
  green = color(0, 255, 0);
  blue = color(0, 0, 255);
  white = color(255, 255, 255);
}

void loadLevel() {
  Colors[6] = white; // box goal
  Colors[11] = white; // box
  Colors[16] = red;
  Colors[17] = white; // box
  Colors[18] = white; // box goal
}
