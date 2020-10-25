void goals() {
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

void goal0() {
  fill(yellow);
  ellipse(XPositions[1]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal1() {
  fill(yellow);
  ellipse(XPositions[5]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal2() {
  fill(yellow);
  ellipse(XPositions[4]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal3() {
  fill(yellow);
  ellipse(XPositions[7]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal4() {
  fill(yellow);
  ellipse(XPositions[3]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[5]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal5() {
  fill(yellow);
  ellipse(XPositions[3]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal6() {
  fill(yellow);
  ellipse(XPositions[6]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[6]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal7() {
  fill(yellow);
  ellipse(XPositions[1]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal8() {
  fill(yellow);
  ellipse(XPositions[1]+cellWidth/2, YPositions[2]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[5]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[6]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[7]+cellHeight/2, cellWidth/2, cellHeight/2);
}

void goal9() {
  fill(yellow);
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
