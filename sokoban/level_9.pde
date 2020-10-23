void level9() {
  // fill with black
  for ( int i = 0; i < ColorsBig.length; i++) 
  {
    ColorsBig[i] = #000000;
  }
  // player location
  storedIndexX = 1;
  storedIndexY = 3;
  // fill the level
  // row 1 
  ColorsBig[cellsWideBig+1] = white; // box goal
  // row 2
  ColorsBig[cellsWideBig*2+1] = brown; // box
  // row 3
  ColorsBig[cellsWideBig*3+1] = red; // player
  ColorsBig[cellsWideBig*3+2] = brown; // box
  ColorsBig[cellsWideBig*3+3] = white; // box goal
}
