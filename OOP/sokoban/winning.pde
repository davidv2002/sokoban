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

void goal0() {
  circle(xPositions[1]+goalOffsetX, yPositions[1]+goalOffsetY, goalDiameter);
  circle(xPositions[3]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
}

void goal1() {
  circle(xPositions[5]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
}

void goal2() {
  circle(xPositions[4]+goalOffsetX, yPositions[1]+goalOffsetY, goalDiameter);
  circle(xPositions[7]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[1]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[6]+goalOffsetY, goalDiameter);
}

void goal3() {
  circle(xPositions[7]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[7]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
  circle(xPositions[7]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
}

void goal4() {
  circle(xPositions[3]+goalOffsetX, yPositions[1]+goalOffsetY, goalDiameter);
  circle(xPositions[1]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[5]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[3]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
}

void goal5() {
  circle(xPositions[3]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[5]+goalOffsetY, goalDiameter);
}

void goal6() {
  circle(xPositions[6]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[6]+goalOffsetX, yPositions[4]+goalOffsetY, goalDiameter);
}

void goal7() {
  circle(xPositions[1]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
  circle(xPositions[4]+goalOffsetX, yPositions[3]+goalOffsetY, goalDiameter);
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
  winSound();
  levelIndex++;
  setupLevel();
}
