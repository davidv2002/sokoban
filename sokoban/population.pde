void population() {
  storedIndexX = 1;
  storedIndexY = 3;
  black = #000000;
  red = #ff0000;
  brown = #796F48;
  blue = #0000ff;
  white = #ffffff;
}

void loadLevel() {
  Colors[6] = white; // box goal
  Colors[11] = brown; // box
  Colors[16] = red;
  Colors[17] = brown; // box
  Colors[18] = white; // box goal
}
