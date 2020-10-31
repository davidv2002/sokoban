void winCheck() {
  switch(levelIndex) {
  case 0:
    if (colors[cellsWide+1] == brown && colors[cellsWide*3+3] == brown) {
      win();
    }
    break;
  case 1:
    if (colors[cellsWide*5+5] == brown) {
      win();
    }
    break;
  case 2:
    if (colors[cellsWide+4] == brown && colors[cellsWide*3+7] == brown && colors[cellsWide*4+1] == brown && colors[cellsWide*6+4] == brown) {
      win();
    }
    break;
  case 3:
    if (colors[cellsWide*3+7] == brown && colors[cellsWide*4+7] == brown && colors[cellsWide*5+7] == brown) {
      win();
    }
    break;
  case 4:
    if (colors[cellsWide+3] == brown && colors[cellsWide*3+1] == brown && colors[cellsWide*3+5] == brown && colors[cellsWide*5+3] == brown) {
      win();
    }
  case 5:
    if (colors[cellsWide*3+3] == brown && colors[cellsWide*5+4] == brown) {
      win();
    }
    break;
  case 6:
    if (colors[cellsWide*3+6] == brown && colors[cellsWide*4+6] == brown) {
      win();
    }
    break;
  case 7:
    if (colors[cellsWide*3+1] == brown && colors[cellsWide*3+4] == brown) {
      win();
    }
    break;
  case 8:
    if (colors[cellsWide*2+1] == brown && colors[cellsWide*3+5] == brown && colors[cellsWide*4+1] == brown && colors[cellsWide*5+4] == brown && colors[cellsWide*6+3] == brown && colors[cellsWide*6+6] == brown && colors[cellsWide*7+4] == brown) {
      win();
    }
    break;
  case 9:
    if (colors[cellsWide*2+2] == brown && colors[cellsWide*2+3] == brown && colors[cellsWide*2+4] == brown && colors[cellsWide*2+6] == brown && colors[cellsWide*3+2] == brown && colors[cellsWide*3+3] == brown && colors[cellsWide*3+4] == brown && colors[cellsWide*4+3] == brown && colors[cellsWide*4+4] == brown && colors[cellsWide*4+6] == brown) {
      win();
    }
  }
}

void win() {
  if (mute) {
  } else {
    song4.play();
    song4.rewind();
  }
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
  }
}

void level0() {
  // player location
  storedIndexX = 1;
  storedIndexY = 3;
  // row 1 
  colors[cellsWide+1] = white; 
  // row 2
  colors[cellsWide*2+1] = brown; 
  // row 3
  colors[cellsWide*3+1] = red; 
  colors[cellsWide*3+2] = brown; 
  colors[cellsWide*3+3] = white;
}

void goal0() {
  circle(xPositions[1]+cellWidth/2, yPositions[1]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[3]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
}

void level1() {
  // player location
  storedIndexX = 1;
  storedIndexY = 1;
  // row 1
  colors[cellsWide+1] = red; 
  colors[cellsWide+2] = white;
  colors[cellsWide+3] = white;
  colors[cellsWide+4] = white;
  colors[cellsWide+5] = white;
  // row 2
  colors[cellsWide*2+5] = white;
  // row 3
  colors[cellsWide*3+1] = white;
  colors[cellsWide*3+2] = white;
  colors[cellsWide*3+3] = white;
  colors[cellsWide*3+4] = white;
  colors[cellsWide*3+5] = white;
  // row 4
  colors[cellsWide*4+1] = white;
  // row 5
  colors[cellsWide*5+1] = white;
  colors[cellsWide*5+2] = white;
  colors[cellsWide*5+3] = white;
  colors[cellsWide*5+4] = brown; 
  colors[cellsWide*5+5] = white;
}

void goal1() {
  circle(xPositions[5]+cellWidth/2, yPositions[5]+cellHeight/2, cellWidth/2.5);
}

void level2() {
  // player location
  storedIndexX = 4;
  storedIndexY = 4;
  // row 1
  colors[cellsWide+4] = white; 
  // row 2
  colors[cellsWide*2+4] = white;
  // row 3
  colors[cellsWide*3+4] = brown; 
  colors[cellsWide*3+5] = white;
  colors[cellsWide*3+6] = brown; 
  colors[cellsWide*3+7] = white; 
  // row 4
  colors[cellsWide*4+1] = white; 
  colors[cellsWide*4+2] = white;
  colors[cellsWide*4+3] = brown; 
  colors[cellsWide*4+4] = red; 
  // row 5
  colors[cellsWide*5+4] = brown; 
  // row 6
  colors[cellsWide*6+4] = white;
}

void goal2() {
  circle(xPositions[4]+cellWidth/2, yPositions[1]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[7]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[1]+cellWidth/2, yPositions[4]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[4]+cellWidth/2, yPositions[6]+cellHeight/2, cellWidth/2.5);
}

void level3() {
  // player location
  storedIndexX = 1;
  storedIndexY = 7;
  // row 1
  colors[cellsWide+2] = white;
  colors[cellsWide+3] = white;
  colors[cellsWide+4] = white;
  // row 2
  colors[cellsWide*2+2] = white;
  colors[cellsWide*2+3] = white;
  colors[cellsWide*2+4] = white;
  colors[cellsWide*2+6] = white;
  colors[cellsWide*2+7] = white;
  // row 3
  colors[cellsWide*3+3] = white;
  colors[cellsWide*3+4] = white;
  colors[cellsWide*3+5] = white;
  colors[cellsWide*3+6] = white;
  colors[cellsWide*3+7] = white; 
  // row 4
  colors[cellsWide*4+3] = white;
  colors[cellsWide*4+7] = white; 
  // row 5
  colors[cellsWide*5+1] = white;
  colors[cellsWide*5+2] = brown; 
  colors[cellsWide*5+3] = white;
  colors[cellsWide*5+7] = white; 
  // row 6
  colors[cellsWide*6+1] = white;
  colors[cellsWide*6+2] = brown; 
  colors[cellsWide*6+3] = brown; 
  // row 7
  colors[cellsWide*7+1] = red; 
  colors[cellsWide*7+2] = white;
  colors[cellsWide*7+3] = white;
}

void goal3() {
  circle(xPositions[7]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[7]+cellWidth/2, yPositions[4]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[7]+cellWidth/2, yPositions[5]+cellHeight/2, cellWidth/2.5);
}

void level4() {
  // player location
  storedIndexX = 3;
  storedIndexY = 1;
  // row 1
  colors[cellsWide+2] = white;
  colors[cellsWide+3] = red;  
  colors[cellsWide+4] = white;
  // row 2
  colors[cellsWide*2+1] = white;
  colors[cellsWide*2+2] = white;
  colors[cellsWide*2+3] = brown; 
  colors[cellsWide*2+4] = white;
  colors[cellsWide*2+5] = white;
  // row 3
  colors[cellsWide*3+1] = white; 
  colors[cellsWide*3+2] = brown; 
  colors[cellsWide*3+3] = white;
  colors[cellsWide*3+4] = brown; 
  colors[cellsWide*3+5] = white; 
  // row 4
  colors[cellsWide*4+1] = white;
  colors[cellsWide*4+2] = white;
  colors[cellsWide*4+3] = brown; 
  colors[cellsWide*4+4] = white;
  colors[cellsWide*4+5] = white;
  // row 5
  colors[cellsWide*5+2] = white;
  colors[cellsWide*5+3] = white; 
  colors[cellsWide*5+4] = white;
}

void goal4() {
  circle(xPositions[3]+cellWidth/2, yPositions[1]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[1]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[5]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[3]+cellWidth/2, yPositions[5]+cellHeight/2, cellWidth/2.5);
}

void level5() {
  // player location
  storedIndexX = 4;
  storedIndexY = 1;
  // row 1
  colors[cellsWide+3] = white;
  colors[cellsWide+4] = red;
  // row 2
  colors[cellsWide*2+3] = brown; 
  colors[cellsWide*2+4] = white;
  // row 3
  colors[cellsWide*3+1] = white;
  colors[cellsWide*3+2] = brown; 
  colors[cellsWide*3+3] = white; 
  colors[cellsWide*3+4] = white;
  // row 4
  colors[cellsWide*4+1] = white;
  colors[cellsWide*4+2] = white;
  colors[cellsWide*4+3] = white;
  colors[cellsWide*4+4] = white;
  // row 5
  colors[cellsWide*5+3] = white; 
  colors[cellsWide*5+4] = white; 
  // row 6
  colors[cellsWide*6+3] = white;
  colors[cellsWide*6+4] = white;
}

void goal5() {
  circle(xPositions[3]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[4]+cellWidth/2, yPositions[5]+cellHeight/2, cellWidth/2.5);
}

void level6() {
  // player location
  storedIndexX = 7;
  storedIndexY = 6;
  // row 1
  colors[cellsWide+5] = white;
  colors[cellsWide+6] = white;
  colors[cellsWide+5] = white;
  // row 2
  colors[cellsWide*2+2] = white;
  colors[cellsWide*2+3] = brown; 
  colors[cellsWide*2+4] = white;
  colors[cellsWide*2+5] = white;
  colors[cellsWide*2+6] = white;
  colors[cellsWide*2+7] = white;
  // row 3
  colors[cellsWide*3+2] = white;
  colors[cellsWide*3+3] = brown; 
  colors[cellsWide*3+4] = white;
  colors[cellsWide*3+6] = white; 
  colors[cellsWide*3+7] = white;
  // row 4
  colors[cellsWide*4+2] = white;
  colors[cellsWide*4+6] = white; 
  colors[cellsWide*4+7] = white;
  // row 5
  colors[cellsWide*5+1] = white;
  colors[cellsWide*5+2] = white;
  colors[cellsWide*5+3] = white;
  colors[cellsWide*5+4] = white;
  colors[cellsWide*5+5] = white;
  colors[cellsWide*5+6] = white;
  colors[cellsWide*5+7] = white;
  // row 6
  colors[cellsWide*6+1] = white;
  colors[cellsWide*6+2] = white;
  colors[cellsWide*6+3] = white;
  colors[cellsWide*6+5] = white;
  colors[cellsWide*6+6] = white;
  colors[cellsWide*6+7] = red;
}

void goal6() {
  circle(xPositions[6]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[6]+cellWidth/2, yPositions[4]+cellHeight/2, cellWidth/2.5);
}

void level7() {
  // player location
  storedIndexX = 5;
  storedIndexY = 3;
  // row 1
  colors[cellsWide+1] = white;
  colors[cellsWide+2] = white;
  colors[cellsWide+3] = white;
  colors[cellsWide+4] = white;
  colors[cellsWide+5] = white;
  // row 2
  colors[cellsWide*2+1] = white;
  colors[cellsWide*2+3] = white;
  colors[cellsWide*2+5] = white;
  // row 3
  colors[cellsWide*3+1] = white; 
  colors[cellsWide*3+2] = white;
  colors[cellsWide*3+3] = brown; 
  colors[cellsWide*3+4] = brown; 
  colors[cellsWide*3+5] = red; 
  // row 4
  colors[cellsWide*4+1] = white;
  colors[cellsWide*4+2] = white;
  colors[cellsWide*4+3] = white;
}

void goal7() {
  circle(xPositions[1]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[4]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
}

void level8() {
  // player location
  storedIndexX = 2;
  storedIndexY = 2;
  // row 1
  colors[cellsWide+3] = white;
  colors[cellsWide+4] = white;
  colors[cellsWide+5] = white;
  // row 2
  colors[cellsWide*2+1] = white; 
  colors[cellsWide*2+2] = red; 
  colors[cellsWide*2+3] = brown;  
  colors[cellsWide*2+4] = white;
  colors[cellsWide*2+5] = white;
  // row 3
  colors[cellsWide*3+3] = white;
  colors[cellsWide*3+4] = brown; 
  colors[cellsWide*3+5] = white; 
  // row 4
  colors[cellsWide*4+1] = white; 
  colors[cellsWide*4+4] = brown; 
  colors[cellsWide*4+5] = white;
  // row 5
  colors[cellsWide*5+1] = white;
  colors[cellsWide*5+3] = white;
  colors[cellsWide*5+4] = white; 
  colors[cellsWide*5+5] = white;
  // row 6
  colors[cellsWide*6+1] = brown; 
  colors[cellsWide*6+2] = white;
  colors[cellsWide*6+3] = brown; 
  colors[cellsWide*6+4] = brown; 
  colors[cellsWide*6+5] = brown; 
  colors[cellsWide*6+6] = white; 
  // row 7
  colors[cellsWide*7+1] = white;
  colors[cellsWide*7+2] = white;
  colors[cellsWide*7+3] = white;
  colors[cellsWide*7+4] = white; 
  colors[cellsWide*7+5] = white;
  colors[cellsWide*7+6] = white;
}

void goal8() {
  circle(xPositions[1]+cellWidth/2, yPositions[2]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[5]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[1]+cellWidth/2, yPositions[4]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[4]+cellWidth/2, yPositions[5]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[3]+cellWidth/2, yPositions[6]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[6]+cellWidth/2, yPositions[6]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[4]+cellWidth/2, yPositions[7]+cellHeight/2, cellWidth/2.5);
}

void level9() {
  // player location
  storedIndexX = 3;
  storedIndexY = 6;
  // row 1
  colors[cellsWide+1] = white;
  colors[cellsWide+2] = white;
  colors[cellsWide+3] = white;
  colors[cellsWide+4] = white;
  colors[cellsWide+5] = white;
  colors[cellsWide+6] = white;
  // row 2
  colors[cellsWide*2+1] = white;
  colors[cellsWide*2+2] = white; 
  colors[cellsWide*2+3] = white; 
  colors[cellsWide*2+4] = brown; 
  colors[cellsWide*2+5] = brown; 
  colors[cellsWide*2+6] = white; 
  // row 3
  colors[cellsWide*3+1] = white;
  colors[cellsWide*3+2] = white; 
  colors[cellsWide*3+3] = brown; 
  colors[cellsWide*3+4] = white; 
  colors[cellsWide*3+5] = brown; 
  colors[cellsWide*3+6] = white;
  // row 4
  colors[cellsWide*4+1] = white;
  colors[cellsWide*4+2] = white;
  colors[cellsWide*4+3] = brown; 
  colors[cellsWide*4+4] = white; 
  colors[cellsWide*4+5] = brown; 
  colors[cellsWide*4+6] = white; 
  // row 5
  colors[cellsWide*5+2] = brown; 
  colors[cellsWide*5+3] = brown; 
  colors[cellsWide*5+4] = brown; 
  colors[cellsWide*5+5] = brown; 
  colors[cellsWide*5+6] = white;
  // row 6
  colors[cellsWide*6+2] = white;
  colors[cellsWide*6+3] = red; 
  colors[cellsWide*6+4] = white;
}

void goal9() {
  circle(xPositions[2]+cellWidth/2, yPositions[2]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[3]+cellWidth/2, yPositions[2]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[4]+cellWidth/2, yPositions[2]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[6]+cellWidth/2, yPositions[2]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[2]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[3]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[4]+cellWidth/2, yPositions[3]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[3]+cellWidth/2, yPositions[4]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[4]+cellWidth/2, yPositions[4]+cellHeight/2, cellWidth/2.5);
  circle(xPositions[6]+cellWidth/2, yPositions[4]+cellHeight/2, cellWidth/2.5);
}
