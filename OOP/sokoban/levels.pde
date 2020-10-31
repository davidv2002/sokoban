void winCheck() {
  switch(levelIndex) {
  case 0:
    if (Colors[cellsWide+1] == brown && Colors[cellsWide*3+3] == brown) {
      win();
    }
    break;
  case 1:
    if (Colors[cellsWide*5+5] == brown) {
      win();
    }
    break;
  case 2:
    if (Colors[cellsWide+4] == brown && Colors[cellsWide*3+7] == brown && Colors[cellsWide*4+1] == brown && Colors[cellsWide*6+4] == brown) {
      win();
    }
    break;
  case 3:
    if (Colors[cellsWide*3+7] == brown && Colors[cellsWide*4+7] == brown && Colors[cellsWide*5+7] == brown) {
      win();
    }
    break;
  case 4:
    if ( Colors[cellsWide+3] == brown && Colors[cellsWide*3+1] == brown && Colors[cellsWide*3+5] == brown && Colors[cellsWide*5+3] == brown) {
      win();
    }
  case 5:
    if (Colors[cellsWide*3+3] == brown && Colors[cellsWide*5+4] == brown) {
      win();
    }
    break;
  case 6:
    if (Colors[cellsWide*3+6] == brown && Colors[cellsWide*4+6] == brown) {
      win();
    }
    break;
  case 7:
    if (Colors[cellsWide*3+1] == brown && Colors[cellsWide*3+4] == brown) {
      win();
    }
    break;
  case 8:
    if (Colors[cellsWide*2+1] == brown && Colors[cellsWide*3+5] == brown && Colors[cellsWide*4+1] == brown && Colors[cellsWide*5+4] == brown && Colors[cellsWide*6+3] == brown && Colors[cellsWide*6+6] == brown && Colors[cellsWide*7+4] == brown) {
      win();
    }
    break;
  case 9:
    if (Colors[cellsWide*2+2] == brown && Colors[cellsWide*2+3] == brown && Colors[cellsWide*2+4] == brown && Colors[cellsWide*2+6] == brown && Colors[cellsWide*3+2] == brown && Colors[cellsWide*3+3] == brown && Colors[cellsWide*3+4] == brown && Colors[cellsWide*4+3] == brown && Colors[cellsWide*4+4] == brown && Colors[cellsWide*4+6] == brown) {
      win();
    }
    break;
  }
}

void win() {
  winSound();
  levelIndex++;
  setupLevel();
}

void goals() {
  fill(yellow);
  switch(levelIndex) {
  case 0:
    goal0();
    break;
  case 1:
    goal1();
    break;
  case 2:
    goal2();
    break;
  case 3:
    goal3();
    break;
  case 4:
    goal4();
    break;
  case 5:
    goal5();
    break;
  case 6:
    goal6();
    break;
  case 7:
    goal7();
    break;
  case 8:
    goal8();
    break;
  case 9:
    goal9();
    break;
  }
}

void level0() {
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

void goal0() {
  ellipse(XPositions[1]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level1() {
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

void goal1() {
  ellipse(XPositions[5]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level2() {
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

void goal2() {
  ellipse(XPositions[4]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level3() {
  // player location
  storedIndexX = 1;
  storedIndexY = 7;
  // fill the level
  // row 1
  Colors[cellsWide+2] = white;
  Colors[cellsWide+3] = white;
  Colors[cellsWide+4] = white;
  // row 2
  Colors[cellsWide*2+2] = white;
  Colors[cellsWide*2+3] = white;
  Colors[cellsWide*2+4] = white;
  Colors[cellsWide*2+6] = white;
  Colors[cellsWide*2+7] = white;
  // row 3
  Colors[cellsWide*3+3] = white;
  Colors[cellsWide*3+4] = white;
  Colors[cellsWide*3+5] = white;
  Colors[cellsWide*3+6] = white;
  Colors[cellsWide*3+7] = white; // box goal
  // row 4
  Colors[cellsWide*4+3] = white;
  Colors[cellsWide*4+7] = white; // box goal
  // row 5
  Colors[cellsWide*5+1] = white;
  Colors[cellsWide*5+2] = brown; // box
  Colors[cellsWide*5+3] = white;
  Colors[cellsWide*5+7] = white; // box goal
  // row 6
  Colors[cellsWide*6+1] = white;
  Colors[cellsWide*6+2] = brown; // box
  Colors[cellsWide*6+3] = brown; // box
  // row 7
  Colors[cellsWide*7+1] = red; // player
  Colors[cellsWide*7+2] = white;
  Colors[cellsWide*7+3] = white;
}

void goal3() {
  ellipse(XPositions[7]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level4() {
  // player location
  storedIndexX = 3;
  storedIndexY = 1;
  // fill the level
  // row 1
  Colors[cellsWide+2] = white;
  Colors[cellsWide+3] = red; // player and box goal
  Colors[cellsWide+4] = white;
  // row 2
  Colors[cellsWide*2+1] = white;
  Colors[cellsWide*2+2] = white;
  Colors[cellsWide*2+3] = brown; // box
  Colors[cellsWide*2+4] = white;
  Colors[cellsWide*2+5] = white;
  // row 3
  Colors[cellsWide*3+1] = white; // box goal
  Colors[cellsWide*3+2] = brown; // box
  Colors[cellsWide*3+3] = white;
  Colors[cellsWide*3+4] = brown; // box
  Colors[cellsWide*3+5] = white; // box goal
  // row 4
  Colors[cellsWide*4+1] = white;
  Colors[cellsWide*4+2] = white;
  Colors[cellsWide*4+3] = brown; // box
  Colors[cellsWide*4+4] = white;
  Colors[cellsWide*4+5] = white;
  // row 5
  Colors[cellsWide*5+2] = white;
  Colors[cellsWide*5+3] = white; // box goal
  Colors[cellsWide*5+4] = white;
}

void goal4() {
  ellipse(XPositions[3]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[5]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level5() {
  // player location
  storedIndexX = 4;
  storedIndexY = 1;
  // fill the level
  // row 1
  Colors[cellsWide+3] = white;
  Colors[cellsWide+4] = red;
  // row 2
  Colors[cellsWide*2+3] = brown; // box
  Colors[cellsWide*2+4] = white;
  // row 3
  Colors[cellsWide*3+1] = white;
  Colors[cellsWide*3+2] = brown; // box
  Colors[cellsWide*3+3] = white; // box goal
  Colors[cellsWide*3+4] = white;
  // row 4
  Colors[cellsWide*4+1] = white;
  Colors[cellsWide*4+2] = white;
  Colors[cellsWide*4+3] = white;
  Colors[cellsWide*4+4] = white;
  // row 5
  Colors[cellsWide*5+3] = white; 
  Colors[cellsWide*5+4] = white; // box goal
  // row 6
  Colors[cellsWide*6+3] = white;
  Colors[cellsWide*6+4] = white;
}

void goal5() {
  ellipse(XPositions[3]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level6() {
  // player location
  storedIndexX = 7;
  storedIndexY = 6;
  // fill the level
  // row 1
  Colors[cellsWide+5] = white;
  Colors[cellsWide+6] = white;
  Colors[cellsWide+5] = white;
  // row 2
  Colors[cellsWide*2+2] = white;
  Colors[cellsWide*2+3] = brown; // box
  Colors[cellsWide*2+4] = white;
  Colors[cellsWide*2+5] = white;
  Colors[cellsWide*2+6] = white;
  Colors[cellsWide*2+7] = white;
  // row 3
  Colors[cellsWide*3+2] = white;
  Colors[cellsWide*3+3] = brown; // box
  Colors[cellsWide*3+4] = white;
  Colors[cellsWide*3+6] = white; // box goal
  Colors[cellsWide*3+7] = white;
  // row 4
  Colors[cellsWide*4+2] = white;
  Colors[cellsWide*4+6] = white; // box goal
  Colors[cellsWide*4+7] = white;
  // row 5
  Colors[cellsWide*5+1] = white;
  Colors[cellsWide*5+2] = white;
  Colors[cellsWide*5+3] = white;
  Colors[cellsWide*5+4] = white;
  Colors[cellsWide*5+5] = white;
  Colors[cellsWide*5+6] = white;
  Colors[cellsWide*5+7] = white;
  // row 6
  Colors[cellsWide*6+1] = white;
  Colors[cellsWide*6+2] = white;
  Colors[cellsWide*6+3] = white;
  Colors[cellsWide*6+5] = white;
  Colors[cellsWide*6+6] = white;
  Colors[cellsWide*6+7] = red; // player
}

void goal6() {
  ellipse(XPositions[6]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[6]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level7() {
  // player location
  storedIndexX = 5;
  storedIndexY = 3;
  // fill the level
  // row 1
  Colors[cellsWide+1] = white;
  Colors[cellsWide+2] = white;
  Colors[cellsWide+3] = white;
  Colors[cellsWide+4] = white;
  Colors[cellsWide+5] = white;
  // row 2
  Colors[cellsWide*2+1] = white;
  Colors[cellsWide*2+3] = white;
  Colors[cellsWide*2+5] = white;
  // row 3
  Colors[cellsWide*3+1] = white; // box goal
  Colors[cellsWide*3+2] = white;
  Colors[cellsWide*3+3] = brown; // box
  Colors[cellsWide*3+4] = brown; // box in goal
  Colors[cellsWide*3+5] = red; // player
  // row 4
  Colors[cellsWide*4+1] = white;
  Colors[cellsWide*4+2] = white;
  Colors[cellsWide*4+3] = white;
}

void goal7() {
  ellipse(XPositions[1]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level8() {
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

void goal8() {
  ellipse(XPositions[1]+cellWidth/2, YPositions[2]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[5]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[6]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[7]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void level9() {
  // player location
  storedIndexX = 3;
  storedIndexY = 6;
  // fill the level
  // row 1
  Colors[cellsWide+1] = white;
  Colors[cellsWide+2] = white;
  Colors[cellsWide+3] = white;
  Colors[cellsWide+4] = white;
  Colors[cellsWide+5] = white;
  Colors[cellsWide+6] = white;
  // row 2
  Colors[cellsWide*2+1] = white;
  Colors[cellsWide*2+2] = white; // box goal
  Colors[cellsWide*2+3] = white; // box goal
  Colors[cellsWide*2+4] = brown; // box
  Colors[cellsWide*2+5] = brown; // box in goal
  Colors[cellsWide*2+6] = white; // box goal
  // row 3
  Colors[cellsWide*3+1] = white;
  Colors[cellsWide*3+2] = white; // box goal
  Colors[cellsWide*3+3] = brown; // box in goal
  Colors[cellsWide*3+4] = white; // box goal
  Colors[cellsWide*3+5] = brown; // box
  Colors[cellsWide*3+6] = white;
  // row 4
  Colors[cellsWide*4+1] = white;
  Colors[cellsWide*4+2] = white;
  Colors[cellsWide*4+3] = brown; // box in goal
  Colors[cellsWide*4+4] = white; // box goal
  Colors[cellsWide*4+5] = brown; // box
  Colors[cellsWide*4+6] = white; // box goal
  // row 5
  Colors[cellsWide*5+2] = brown; // box
  Colors[cellsWide*5+3] = brown; // box
  Colors[cellsWide*5+4] = brown; // box
  Colors[cellsWide*5+5] = brown; // box
  Colors[cellsWide*5+6] = white;
  // row 6
  Colors[cellsWide*6+2] = white;
  Colors[cellsWide*6+3] = red; // player
  Colors[cellsWide*6+4] = white;
}

void goal9() {
  ellipse(XPositions[2]+cellWidth/2, YPositions[2]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[2]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[2]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[6]+cellWidth/2, YPositions[2]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[2]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[6]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
}
