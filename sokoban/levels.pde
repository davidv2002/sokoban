void level1() {
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
  Colors[11] = brown; // box
  Colors[16] = red;
  Colors[17] = brown; // box
  Colors[18] = white; // box goal
}

void level2() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = #000000;
  }
  // player location
  storedIndexX = 0;
  storedIndexY = 0;
  // fill the level
  Colors[0] = red; // player
  Colors[1] = white;
  Colors[2] = white;
  Colors[3] = white;
  Colors[4] = white;
  Colors[9] = white;
  Colors[10] = white;
  Colors[11] = white;
  Colors[12] = white;
  Colors[13] = white;
  Colors[14] = white;
  Colors[15] = white;
  Colors[20] = white;
  Colors[21] = white;
  Colors[22] = white;
  Colors[23] = brown; // box
  Colors[24] = white; // box goal
}
