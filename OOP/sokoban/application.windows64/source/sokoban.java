import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sokoban extends PApplet {

// global variables
int cellsWide = 9, cellsTall = 9, levelIndex = 0, x, y, numMoves, numPush, storedColor, storedIndexX, storedIndexY;
float cellWidth, cellHeight, heightOffset, gameHeight;
int[] Colors = new int[cellsWide*cellsTall];
float[] XPositions = new float[cellsWide+1];
float[] YPositions = new float[cellsTall+1];
int black, white, brown, red, yellow;
String level, moves, pushes;
PFont buttonFont;
PImage pic;
boolean quitTest, restartTest, nextTest, lastTest, mute, muteTest;

public void setup() {
  
  population();
  panelPopulation();
  soundPopulation();
  buildMatrix();
  setupLevel();
}

public void draw() {
  panalTextPopulation();
  goals();
  panel();
}

public void mousePressed() {
  if (pmouseY < gameHeight) {
    baseLogic();
  } else {
    panelClick();
  }
  winCheck();
}

public void keyPressed() {
  if (key == CODED) {
    dPad();
  }
  winCheck();
}
public void dPad() {
  switch(keyCode) {
  case UP:
    x =storedIndexX;
    y = storedIndexY-1;
    dPadLogic();
    break;
  case DOWN:
    x =storedIndexX;
    y = storedIndexY+1;
    dPadLogic();
    break;
  case LEFT:
    x =storedIndexX-1;
    y = storedIndexY;
    dPadLogic();
    break;
  case RIGHT:
    x =storedIndexX+1;
    y = storedIndexY;
    dPadLogic();
    break;
  }
}

public void dPadLogic() {
  switch(Colors[cellsWide*y+x]) {
  case 0xff000000: // black
    wallSound();
    break;
  case 0xff796F48: // brown
    pushDirection();
    break;
  default:
    swap();
    break;
  }
}

public void goals() {
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

public void goal0() {
  fill(yellow);
  ellipse(XPositions[1]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal1() {
  fill(yellow);
  ellipse(XPositions[5]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal2() {
  fill(yellow);
  ellipse(XPositions[4]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal3() {
  fill(yellow);
  ellipse(XPositions[7]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[7]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal4() {
  fill(yellow);
  ellipse(XPositions[3]+cellWidth/2, YPositions[1]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[5]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal5() {
  fill(yellow);
  ellipse(XPositions[3]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal6() {
  fill(yellow);
  ellipse(XPositions[6]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[6]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal7() {
  fill(yellow);
  ellipse(XPositions[1]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal8() {
  fill(yellow);
  ellipse(XPositions[1]+cellWidth/2, YPositions[2]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[5]+cellWidth/2, YPositions[3]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[1]+cellWidth/2, YPositions[4]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[5]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[3]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[6]+cellWidth/2, YPositions[6]+cellHeight/2, cellWidth/2, cellHeight/2);
  ellipse(XPositions[4]+cellWidth/2, YPositions[7]+cellHeight/2, cellWidth/2, cellHeight/2);
}

public void goal9() {
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
public void win() {
  winSound();
  levelIndex++;
  setupLevel();
}

public void winCheck() {
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

public void level0() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
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

public void level1() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
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

public void level2() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
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

public void level3() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
  }
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

public void level4() {
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
  }
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

public void level5() {
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
  }
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

public void level6() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
  }
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

public void level7() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
  }
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

public void level8() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
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

public void level9() {
  // fill with black
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = 0xff000000;
  }
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
/**
 black = walls
 red = player
 brown = box
 */

public void baseLogic() {
  for ( x = 0; x < cellsWide; x++) {
    for ( y = 0; y < cellsTall; y++) {
      if (pmouseX>XPositions[x] && pmouseY>YPositions[y] && pmouseX<XPositions[x+1] && pmouseY<YPositions[y+1] && abs(storedIndexX-x)+abs(storedIndexY-y) == 1) {
        switch(Colors[cellsWide*y+x]) {
        case 0xff000000: // black
          wallSound();
          break;
        case 0xff796F48: // brown
          pushDirection();
          break;
        default:
          swap();
          break;
        }
      }
    }
  }
}

public void swap() {
  // swap colors
  storedColor = Colors[cellsWide*storedIndexY+storedIndexX];
  Colors[cellsWide*storedIndexY+storedIndexX] = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*storedIndexY+storedIndexX]);
  rect( XPositions[storedIndexX], YPositions[storedIndexY], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
  // update indexes
  storedIndexX = x;
  storedIndexY = y;
  numMoves++;
}

public void pushDirection() {
  if (storedIndexY == y) {
    if (storedIndexX-x > 0) {
      if (Colors[cellsWide*y+(x-1)] == 0xff000000) {
        wallSound();
      } else if (Colors[cellsWide*y+(x-1)] == 0xff796F48) {
        wallSound();
      } else {
        pushSound();
        pushLeft();
        numPush++;
        swap();
      }
    } else {
      if (Colors[cellsWide*y+x+1] == 0xff000000) {
        wallSound();
      } else if (Colors[cellsWide*y+x+1] == 0xff796F48) {
        wallSound();
      } else {
        pushSound();
        pushRight();
        numPush++;
        swap();
      }
    }
  } else {
    if (storedIndexY-y > 0) {
      if (Colors[cellsWide*(y-1)+x] == 0xff000000) {
        wallSound();
      } else if (Colors[cellsWide*(y-1)+x] == 0xff796F48) {
        wallSound();
      } else {
        pushSound();
        pushUp();
        numPush++;
        swap();
      }
    } else {
      if (Colors[cellsWide*(y+1)+x] == 0xff000000) {
        wallSound();
      } else if (Colors[cellsWide*(y+1)+x] == 0xff796F48) {
        wallSound();
      } else {
        pushSound();
        pushDown();
        numPush++;
        swap();
      }
    }
  }
}

public void pushLeft() {
  // swap colors
  storedColor = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = Colors[cellsWide*y+(x-1)];
  Colors[cellsWide*y+(x-1)] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*y+(x-1)]);
  rect( XPositions[x-1], YPositions[y], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
}

public void pushRight() {
  // swap colors
  storedColor = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = Colors[cellsWide*y+x+1];
  Colors[cellsWide*y+x+1] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*y+x+1]);
  rect( XPositions[x+1], YPositions[y], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
}

public void pushUp() {
  // swap colors
  storedColor = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = Colors[cellsWide*(y-1)+x];
  Colors[cellsWide*(y-1)+x] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*(y-1)+x]);
  rect( XPositions[x], YPositions[y-1], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
}

public void pushDown() {
  // swap colors
  storedColor = Colors[cellsWide*y+x];
  Colors[cellsWide*y+x] = Colors[cellsWide*(y+1)+x];
  Colors[cellsWide*(y+1)+x] = storedColor;
  // redraw the cells
  fill( Colors[cellsWide*(y+1)+x]);
  rect( XPositions[x], YPositions[y+1], cellWidth, cellHeight);
  fill( Colors[cellsWide*y+x]);
  rect( XPositions[x], YPositions[y], cellWidth, cellHeight);
}
public void panel() {
  fill(white);
  square(0, gameHeight, heightOffset);
  square(heightOffset, gameHeight, heightOffset);
  square(heightOffset*2, gameHeight, heightOffset);
  square(width-heightOffset*3.5f, gameHeight, heightOffset);
  square(width-heightOffset*2.5f, gameHeight, heightOffset/2);
  square(width-heightOffset*2.5f, gameHeight+heightOffset/2, heightOffset/2);
  square(width-heightOffset*2, gameHeight, heightOffset);
  square(width-heightOffset, gameHeight, heightOffset);
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(buttonFont, height/20);
  text(level, 0, gameHeight, heightOffset, heightOffset);
  text(moves, heightOffset, gameHeight, heightOffset, heightOffset);
  text(pushes, heightOffset*2, gameHeight, heightOffset, heightOffset);
  text("mute", width-heightOffset*3.5f, gameHeight, heightOffset, heightOffset);
  text("restart level", width-heightOffset*2, gameHeight, heightOffset, heightOffset);
  text("quit playing", width-heightOffset, gameHeight, heightOffset, heightOffset);
  textFont(buttonFont, height/30);
  text("next level", width-heightOffset*2.5f, gameHeight, heightOffset/2, heightOffset/2);
  text("last level", width-heightOffset*2.5f, gameHeight+heightOffset/2, heightOffset/2, heightOffset/2);
}

public void panelClick() {
  panelPopulation();
  if ( restartTest == true) {
    setupLevel();
  } else if ( nextTest == true) {
    levelIndex++;
    setupLevel();
  } else if ( lastTest == true) {
    levelIndex--;
    setupLevel();
  } else if ( muteTest == true) {
    song();
  } else if ( quitTest == true) {
    exit();
  }
}
public void population() {
  black = 0xff000000;
  red = 0xffff0000;
  brown = 0xff796F48;
  yellow = 0xffF9FC3B;
  white = 0xffffffff;
  gameHeight = height*0.8f;
  heightOffset = height-gameHeight;
  pic = loadImage("1.jpg");
  buttonFont = createFont ("Microsoft Sans Serif", 80);
}

public void buildMatrix() {
  // width and hight for the cells
  cellWidth = width/cellsWide;
  cellHeight = gameHeight/cellsTall;
  // x cords of matrix
  for (int i = 0; i < XPositions.length; i++) {
    XPositions[i] = width*((i*1.0f)/cellsWide);
  }
  // y cords of matrix
  for (int i = 0; i < YPositions.length; i++) {
    YPositions[i] = gameHeight*((i*1.0f)/cellsTall);
  }
}

public void panalTextPopulation() {
  level = "level\n"+(levelIndex+1);
  moves = "moves\n"+numMoves;
  pushes = "pushes\n"+numPush;
}

public void panelPopulation() {
  quitTest = (pmouseX > width-heightOffset);
  restartTest = (pmouseX > width-heightOffset*2 && pmouseX < width-heightOffset);
  nextTest = (pmouseX > width-heightOffset*2.5f && pmouseX < width-heightOffset*2 && pmouseY < gameHeight+heightOffset/2 && levelIndex != 9);
  lastTest = (pmouseX > width-heightOffset*2.5f && pmouseX < width-heightOffset*2 && pmouseY > gameHeight+heightOffset/2 && levelIndex != 0);
  muteTest = (pmouseX > width-heightOffset*3.5f && pmouseX < width-heightOffset*2.5f);
}
public void setupLevel() {
  switch(levelIndex) {
  case 0:
    level0();
    drawLevel();
    break;
  case 1:
    level1();
    drawLevel();
    break;
  case 2:
    level2();
    drawLevel();
    break;
  case 3:
    level3();
    drawLevel();
    break;
  case 4:
    level4();
    drawLevel();
    break;
  case 5:
    level5();
    drawLevel();
    break;
  case 6:
    level6();
    drawLevel();
    break;
  case 7:
    level7();
    drawLevel();
    break;
  case 8:
    level8();
    drawLevel();
    break;
  case 9:
    level9();
    drawLevel();
    break;
  default:
    exit();
  }
}

public void drawLevel() {
  image(pic, 0, 0, width, gameHeight);
  for (int i = 0; i < cellsWide; i++) {
    for (int j = 0; j < cellsTall; j++) {
      if (Colors[cellsWide*j+i] == 0xff000000) {
      } else {
        fill( Colors[cellsWide*j+i]);
        rect( XPositions[i], YPositions[j], cellWidth, cellHeight);
      }
    }
  }
  numMoves = 0;
  numPush = 0;
}







Minim minim;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioPlayer song4;

public void soundPopulation() {
  minim = new Minim(this);
  song1 = minim.loadFile("Beat_Your_Competition.mp3");
  song2 = minim.loadFile("Glass_and_Metal_Collision.mp3");
  song3 = minim.loadFile("Slide.mp3");
  song4 = minim.loadFile("Magic_Chime.mp3");
  mute = true;
  song();
}

public void song() {
  if (mute == true) {
    song1.loop();
    mute = false;
  } else {
    song1.pause();
    song1.rewind();
    mute = true;
  }
}

public void wallSound() {
  if (mute == true) {
  } else {
    song2.play();
    song2.rewind();
  }
}

public void pushSound() {
  if (mute == true) {
  } else {
    song3.play();
    song3.rewind();
  }
}

public void winSound() {
  if (mute == true) {
  } else {
    song4.play();
    song4.rewind();
  }
}
  public void settings() {  size(1024, 768); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sokoban" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
