void setupLevel() {
  // fill with black
  for (int i = 0; i < colors.length; i++) 
  {
    colors[i] = 0xFF000000;
  }
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
  case 3:
    level3();
    break;
  case 4:
    level4();
    break;
  case 5:
    level5();
    break;
  case 6:
    level6();
    break;
  case 7:
    level7();
    break;
  case 8:
    level8();
    break;
  case 9:
    level9();
    break;
  default:
    exit();
  }
  levelDraw();
  // reset
  moveNumber = 0;
  pushNumber = 0;
}

void goals() {
  fill(yellow);
  stroke(yellow);
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
  stroke(black);
}

void levelDraw() {
  // draw the level
  image(background, 0, 0, width, gameHeight);
  for (int i = 0; i < boxesWide; i++) {
    for (int j = 0; j < 9; j++) {
      if (colors[boxesWide*j+i] == 0xFF000000) {
      } else {
        fill(colors[boxesWide*j+i]);
        stroke(colors[boxesWide*j+i]);
        rect(xPositions[i], yPositions[j], boxWidth, boxHeight);
      }
    }
  }
  stroke(black);
}

void winCheck() {
  switch(levelIndex) {
  case 0:
    if (colors[boxesWide+1] == brown && colors[boxesWide*3+3] == brown) {
      win();
    }
    break;
  case 1:
    if (colors[boxesWide*5+5] == brown) {
      win();
    }
    break;
  case 2:
    if (colors[boxesWide+4] == brown && colors[boxesWide*3+7] == brown && colors[boxesWide*4+1] == brown && colors[boxesWide*6+4] == brown) {
      win();
    }
    break;
  case 3:
    if (colors[boxesWide*3+7] == brown && colors[boxesWide*4+7] == brown && colors[boxesWide*5+7] == brown) {
      win();
    }
    break;
  case 4:
    if (colors[boxesWide+3] == brown && colors[boxesWide*3+1] == brown && colors[boxesWide*3+5] == brown && colors[boxesWide*5+3] == brown) {
      win();
    }
  case 5:
    if (colors[boxesWide*3+3] == brown && colors[boxesWide*5+4] == brown) {
      win();
    }
    break;
  case 6:
    if (colors[boxesWide*3+6] == brown && colors[boxesWide*4+6] == brown) {
      win();
    }
    break;
  case 7:
    if (colors[boxesWide*3+1] == brown && colors[boxesWide*3+4] == brown) {
      win();
    }
    break;
  case 8:
    if (colors[boxesWide*2+1] == brown && colors[boxesWide*3+5] == brown && colors[boxesWide*4+1] == brown && colors[boxesWide*5+4] == brown && colors[boxesWide*6+3] == brown && colors[boxesWide*6+6] == brown && colors[boxesWide*7+4] == brown) {
      win();
    }
    break;
  case 9:
    if (colors[boxesWide*2+2] == brown && colors[boxesWide*2+3] == brown && colors[boxesWide*2+4] == brown && colors[boxesWide*2+6] == brown && colors[boxesWide*3+2] == brown && colors[boxesWide*3+3] == brown && colors[boxesWide*3+4] == brown && colors[boxesWide*4+3] == brown && colors[boxesWide*4+4] == brown && colors[boxesWide*4+6] == brown) {
      win();
    }
  }
}

void level0() {
  // player location
  storedXIndex = 1;
  storedYIndex = 3;
  // row 1 
  colors[boxesWide+1] = white; 
  // row 2
  colors[boxesWide*2+1] = brown; 
  // row 3
  colors[boxesWide*3+1] = red; 
  colors[boxesWide*3+2] = brown; 
  colors[boxesWide*3+3] = white;
}

void goal0() {
  circle(xPositions[1]+goalOffsetX, yPositions[1]+goalOffsetY, goalDiameter);
  circle(xPositions[3]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
}

void level1() {
  // player location
  storedXIndex = 1;
  storedYIndex = 1;
  // row 1
  colors[boxesWide+1] = red; 
  colors[boxesWide+2] = white;
  colors[boxesWide+3] = white;
  colors[boxesWide+4] = white;
  colors[boxesWide+5] = white;
  // row 2
  colors[boxesWide*2+5] = white;
  // row 3
  colors[boxesWide*3+1] = white;
  colors[boxesWide*3+2] = white;
  colors[boxesWide*3+3] = white;
  colors[boxesWide*3+4] = white;
  colors[boxesWide*3+5] = white;
  // row 4
  colors[boxesWide*4+1] = white;
  // row 5
  colors[boxesWide*5+1] = white;
  colors[boxesWide*5+2] = white;
  colors[boxesWide*5+3] = white;
  colors[boxesWide*5+4] = brown; 
  colors[boxesWide*5+5] = white;
}

void goal1() {
  circle(xPositions[5]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
}

void level2() {
  // player location
  storedXIndex = 4;
  storedYIndex = 4;
  // row 1
  colors[boxesWide+4] = white; 
  // row 2
  colors[boxesWide*2+4] = white;
  // row 3
  colors[boxesWide*3+4] = brown; 
  colors[boxesWide*3+5] = white;
  colors[boxesWide*3+6] = brown; 
  colors[boxesWide*3+7] = white; 
  // row 4
  colors[boxesWide*4+1] = white; 
  colors[boxesWide*4+2] = white;
  colors[boxesWide*4+3] = brown; 
  colors[boxesWide*4+4] = red; 
  // row 5
  colors[boxesWide*5+4] = brown; 
  // row 6
  colors[boxesWide*6+4] = white;
}

void goal2() {
  circle(xPositions[4]+goalOffsetX, yPositions[1]+goalOffsetY, goalDiameter);
  circle(xPositions[7]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[1]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[6]+goalOffsetY, goalDiameter);
}

void level3() {
  // player location
  storedXIndex = 1;
  storedYIndex = 7;
  // row 1
  colors[boxesWide+2] = white;
  colors[boxesWide+3] = white;
  colors[boxesWide+4] = white;
  // row 2
  colors[boxesWide*2+2] = white;
  colors[boxesWide*2+3] = white;
  colors[boxesWide*2+4] = white;
  colors[boxesWide*2+6] = white;
  colors[boxesWide*2+7] = white;
  // row 3
  colors[boxesWide*3+3] = white;
  colors[boxesWide*3+4] = white;
  colors[boxesWide*3+5] = white;
  colors[boxesWide*3+6] = white;
  colors[boxesWide*3+7] = white; 
  // row 4
  colors[boxesWide*4+3] = white;
  colors[boxesWide*4+7] = white; 
  // row 5
  colors[boxesWide*5+1] = white;
  colors[boxesWide*5+2] = brown; 
  colors[boxesWide*5+3] = white;
  colors[boxesWide*5+7] = white; 
  // row 6
  colors[boxesWide*6+1] = white;
  colors[boxesWide*6+2] = brown; 
  colors[boxesWide*6+3] = brown; 
  // row 7
  colors[boxesWide*7+1] = red; 
  colors[boxesWide*7+2] = white;
  colors[boxesWide*7+3] = white;
}

void goal3() {
  circle(xPositions[7]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[7]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
  circle(xPositions[7]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
}

void level4() {
  // player location
  storedXIndex = 3;
  storedYIndex = 1;
  // row 1
  colors[boxesWide+2] = white;
  colors[boxesWide+3] = red;  
  colors[boxesWide+4] = white;
  // row 2
  colors[boxesWide*2+1] = white;
  colors[boxesWide*2+2] = white;
  colors[boxesWide*2+3] = brown; 
  colors[boxesWide*2+4] = white;
  colors[boxesWide*2+5] = white;
  // row 3
  colors[boxesWide*3+1] = white; 
  colors[boxesWide*3+2] = brown; 
  colors[boxesWide*3+3] = white;
  colors[boxesWide*3+4] = brown; 
  colors[boxesWide*3+5] = white; 
  // row 4
  colors[boxesWide*4+1] = white;
  colors[boxesWide*4+2] = white;
  colors[boxesWide*4+3] = brown; 
  colors[boxesWide*4+4] = white;
  colors[boxesWide*4+5] = white;
  // row 5
  colors[boxesWide*5+2] = white;
  colors[boxesWide*5+3] = white; 
  colors[boxesWide*5+4] = white;
}

void goal4() {
  circle(xPositions[3]+goalOffsetX, yPositions[1]+goalOffsetY, goalDiameter);
  circle(xPositions[1]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[5]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[3]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
}

void level5() {
  // player location
  storedXIndex = 4;
  storedYIndex = 1;
  // row 1
  colors[boxesWide+3] = white;
  colors[boxesWide+4] = red;
  // row 2
  colors[boxesWide*2+3] = brown; 
  colors[boxesWide*2+4] = white;
  // row 3
  colors[boxesWide*3+1] = white;
  colors[boxesWide*3+2] = brown; 
  colors[boxesWide*3+3] = white; 
  colors[boxesWide*3+4] = white;
  // row 4
  colors[boxesWide*4+1] = white;
  colors[boxesWide*4+2] = white;
  colors[boxesWide*4+3] = white;
  colors[boxesWide*4+4] = white;
  // row 5
  colors[boxesWide*5+3] = white; 
  colors[boxesWide*5+4] = white; 
  // row 6
  colors[boxesWide*6+3] = white;
  colors[boxesWide*6+4] = white;
}

void goal5() {
  circle(xPositions[3]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
}

void level6() {
  // player location
  storedXIndex = 7;
  storedYIndex = 6;
  // row 1
  colors[boxesWide+5] = white;
  colors[boxesWide+6] = white;
  colors[boxesWide+5] = white;
  // row 2
  colors[boxesWide*2+2] = white;
  colors[boxesWide*2+3] = brown; 
  colors[boxesWide*2+4] = white;
  colors[boxesWide*2+5] = white;
  colors[boxesWide*2+6] = white;
  colors[boxesWide*2+7] = white;
  // row 3
  colors[boxesWide*3+2] = white;
  colors[boxesWide*3+3] = brown; 
  colors[boxesWide*3+4] = white;
  colors[boxesWide*3+6] = white; 
  colors[boxesWide*3+7] = white;
  // row 4
  colors[boxesWide*4+2] = white;
  colors[boxesWide*4+6] = white; 
  colors[boxesWide*4+7] = white;
  // row 5
  colors[boxesWide*5+1] = white;
  colors[boxesWide*5+2] = white;
  colors[boxesWide*5+3] = white;
  colors[boxesWide*5+4] = white;
  colors[boxesWide*5+5] = white;
  colors[boxesWide*5+6] = white;
  colors[boxesWide*5+7] = white;
  // row 6
  colors[boxesWide*6+1] = white;
  colors[boxesWide*6+2] = white;
  colors[boxesWide*6+3] = white;
  colors[boxesWide*6+5] = white;
  colors[boxesWide*6+6] = white;
  colors[boxesWide*6+7] = red;
}

void goal6() {
  circle(xPositions[6]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[6]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
}

void level7() {
  // player location
  storedXIndex = 5;
  storedYIndex = 3;
  // row 1
  colors[boxesWide+1] = white;
  colors[boxesWide+2] = white;
  colors[boxesWide+3] = white;
  colors[boxesWide+4] = white;
  colors[boxesWide+5] = white;
  // row 2
  colors[boxesWide*2+1] = white;
  colors[boxesWide*2+3] = white;
  colors[boxesWide*2+5] = white;
  // row 3
  colors[boxesWide*3+1] = white; 
  colors[boxesWide*3+2] = white;
  colors[boxesWide*3+3] = brown; 
  colors[boxesWide*3+4] = brown; 
  colors[boxesWide*3+5] = red; 
  // row 4
  colors[boxesWide*4+1] = white;
  colors[boxesWide*4+2] = white;
  colors[boxesWide*4+3] = white;
}

void goal7() {
  circle(xPositions[1]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
}

void level8() {
  // player location
  storedXIndex = 2;
  storedYIndex = 2;
  // row 1
  colors[boxesWide+3] = white;
  colors[boxesWide+4] = white;
  colors[boxesWide+5] = white;
  // row 2
  colors[boxesWide*2+1] = white; 
  colors[boxesWide*2+2] = red; 
  colors[boxesWide*2+3] = brown;  
  colors[boxesWide*2+4] = white;
  colors[boxesWide*2+5] = white;
  // row 3
  colors[boxesWide*3+3] = white;
  colors[boxesWide*3+4] = brown; 
  colors[boxesWide*3+5] = white; 
  // row 4
  colors[boxesWide*4+1] = white; 
  colors[boxesWide*4+4] = brown; 
  colors[boxesWide*4+5] = white;
  // row 5
  colors[boxesWide*5+1] = white;
  colors[boxesWide*5+3] = white;
  colors[boxesWide*5+4] = white; 
  colors[boxesWide*5+5] = white;
  // row 6
  colors[boxesWide*6+1] = brown; 
  colors[boxesWide*6+2] = white;
  colors[boxesWide*6+3] = brown; 
  colors[boxesWide*6+4] = brown; 
  colors[boxesWide*6+5] = brown; 
  colors[boxesWide*6+6] = white; 
  // row 7
  colors[boxesWide*7+1] = white;
  colors[boxesWide*7+2] = white;
  colors[boxesWide*7+3] = white;
  colors[boxesWide*7+4] = white; 
  colors[boxesWide*7+5] = white;
  colors[boxesWide*7+6] = white;
}

void goal8() {
  circle(xPositions[1]+goalOffsetX, yPositions[2]+goalOffsetY, goalDiameter);
  circle(xPositions[5]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[1]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
  circle(xPositions[3]+goalOffsetX, yPositions[6]+goalOffsetY, goalDiameter);
  circle(xPositions[6]+goalOffsetX, yPositions[6]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[7]+goalOffsetY, goalDiameter);
}

void level9() {
  // player location
  storedXIndex = 3;
  storedYIndex = 6;
  // row 1
  colors[boxesWide+1] = white;
  colors[boxesWide+2] = white;
  colors[boxesWide+3] = white;
  colors[boxesWide+4] = white;
  colors[boxesWide+5] = white;
  colors[boxesWide+6] = white;
  // row 2
  colors[boxesWide*2+1] = white;
  colors[boxesWide*2+2] = white; 
  colors[boxesWide*2+3] = white; 
  colors[boxesWide*2+4] = brown; 
  colors[boxesWide*2+5] = brown; 
  colors[boxesWide*2+6] = white; 
  // row 3
  colors[boxesWide*3+1] = white;
  colors[boxesWide*3+2] = white; 
  colors[boxesWide*3+3] = brown; 
  colors[boxesWide*3+4] = white; 
  colors[boxesWide*3+5] = brown; 
  colors[boxesWide*3+6] = white;
  // row 4
  colors[boxesWide*4+1] = white;
  colors[boxesWide*4+2] = white;
  colors[boxesWide*4+3] = brown; 
  colors[boxesWide*4+4] = white; 
  colors[boxesWide*4+5] = brown; 
  colors[boxesWide*4+6] = white; 
  // row 5
  colors[boxesWide*5+2] = brown; 
  colors[boxesWide*5+3] = brown; 
  colors[boxesWide*5+4] = brown; 
  colors[boxesWide*5+5] = brown;
  colors[boxesWide*5+6] = white;
  // row 6
  colors[boxesWide*6+2] = white;
  colors[boxesWide*6+3] = red; 
  colors[boxesWide*6+4] = white;
}

void goal9() {
  circle(xPositions[2]+goalOffsetX, yPositions[2]+goalOffsetY, goalDiameter);
  circle(xPositions[3]+goalOffsetX, yPositions[2]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[2]+goalOffsetY, goalDiameter);
  circle(xPositions[6]+goalOffsetX, yPositions[2]+goalOffsetY, goalDiameter);
  circle(xPositions[2]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[3]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[3]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
  circle(xPositions[6]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
}
