void population() {
  black = #000000;
  red = #ff0000;
  brown = #796F48;
  blue = #0000ff;
  white = #ffffff;
  pic = loadImage("1.jpg");
}

void testLevel() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = #000000;
  }
  // player location
  storedIndexX = 1;
  storedIndexY = 3;
  // fill the level
  Colors[6] = white; // box goal
  //Colors[7] = white;
  //Colors[8] = white;
  Colors[11] = brown; // box
  //Colors[12] = white;
  //Colors[13] = white;
  Colors[16] = red;
  Colors[17] = brown; // box
  Colors[18] = white; // box goal
}
