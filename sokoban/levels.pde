void level0() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = #000000;
  }
  // player location
  storedIndexX = 1;
  storedIndexY = 3;
  // fill the level
  // row 1 
  Colors[cellsWide+1] = white; // box goal
  // row 2
  Colors[cellsWide*2+1] = brown; // box
  // row 3
  Colors[cellsWide*3+1] = red; // player
  Colors[cellsWide*3+2] = brown; // box
  Colors[cellsWide*3+3] = white; // box goal
}

void level1() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = #000000;
  }
  // player location
  storedIndexX = 1;
  storedIndexY = 1;
  // fill the level
  // row 1
  Colors[cellsWide+1] = red; // player
  Colors[cellsWide+2] = white;
  Colors[cellsWide+3] = white;
  Colors[cellsWide+4] = white;
  Colors[cellsWide+5] = white;
  // row 2
  Colors[cellsWide*2+5] = white;
  // row 3
  Colors[cellsWide*3+1] = white;
  Colors[cellsWide*3+2] = white;
  Colors[cellsWide*3+3] = white;
  Colors[cellsWide*3+4] = white;
  Colors[cellsWide*3+5] = white;
  // row 4
  Colors[cellsWide*4+1] = white;
  // row 5
  Colors[cellsWide*5+1] = white;
  Colors[cellsWide*5+2] = white;
  Colors[cellsWide*5+3] = white;
  Colors[cellsWide*5+4] = brown; // box
  Colors[cellsWide*5+5] = white; // box goal
}

void level2() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = #000000;
  }
  // player location
  storedIndexX = 4;
  storedIndexY = 4;
  // fill the level
  // row 1
  Colors[cellsWide+4] = white; // box goal
  // row 2
  Colors[cellsWide*2+4] = white;
  // row 3
  Colors[cellsWide*3+4] = brown; // box
  Colors[cellsWide*3+5] = white;
  Colors[cellsWide*3+6] = brown; // box
  Colors[cellsWide*3+7] = white; // box goal
  // row 4
  Colors[cellsWide*4+1] = white; // box goal
  Colors[cellsWide*4+2] = white;
  Colors[cellsWide*4+3] = brown; // box
  Colors[cellsWide*4+4] = red; // player
  // row 5
  Colors[cellsWide*5+4] = brown; // box
  // row 6
  Colors[cellsWide*6+4] = white; // box goal
}

void level10() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = #000000;
  }
  // player location
  storedIndexX = 2;
  storedIndexY = 2;
  // fill the level
  // row 1
  Colors[cellsWide+3] = white;
  Colors[cellsWide+4] = white;
  Colors[cellsWide+5] = white;
  // row 2
  Colors[cellsWide*2+1] = white; // box goal
  Colors[cellsWide*2+2] = red; // player
  Colors[cellsWide*2+3] = brown; // box 
  Colors[cellsWide*2+4] = white;
  Colors[cellsWide*2+5] = white;
  // row 3
  Colors[cellsWide*3+3] = white;
  Colors[cellsWide*3+4] = brown; // box
  Colors[cellsWide*3+5] = white; // box goal
  // row 4
  Colors[cellsWide*4+1] = white; // box goal
  Colors[cellsWide*4+4] = brown; // box
  Colors[cellsWide*4+5] = white;
  // row 5
  Colors[cellsWide*5+1] = white;
  Colors[cellsWide*5+3] = white;
  Colors[cellsWide*5+4] = white; // box goal
  Colors[cellsWide*5+5] = white;
  // row 6
  Colors[cellsWide*6+1] = brown; // box
  Colors[cellsWide*6+2] = white;
  Colors[cellsWide*6+3] = brown; // box in goal
  Colors[cellsWide*6+4] = brown; // box
  Colors[cellsWide*6+5] = brown; // box
  Colors[cellsWide*6+6] = white; // box goal
  // row 7
  Colors[cellsWide*7+1] = white;
  Colors[cellsWide*7+2] = white;
  Colors[cellsWide*7+3] = white;
  Colors[cellsWide*7+4] = white; // box goal
  Colors[cellsWide*7+5] = white;
  Colors[cellsWide*7+6] = white;
}
