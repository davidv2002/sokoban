
//x by x code

  // colors
  /*
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
  */

/**
void mousePressed() {
  for ( int i = 0; i < boxesWide; i++) 
  {
    for ( int j = 0; j < boxesTall; j++) 
    {
      if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1]) 
      {
        if (firstStored == false) 
        {
          // set flag
          firstStored = true;
          // store indexes
          storedIndexX = i;
          storedIndexY = j;
        } else 
        {
          // reset flag
          firstStored = false;
          // swap the color of the two boxes
          // swap colors
          storedColor = Colors[boxesWide*storedIndexY+storedIndexX];
          Colors[boxesWide*storedIndexY+storedIndexX] = Colors[boxesWide*j+i];
          Colors[boxesWide*j+i] = storedColor;
          // redraw first clicked box
          fill( Colors[boxesWide*storedIndexY+storedIndexX]);
          rect( XPositions[storedIndexX], YPositions[storedIndexY], boxWidth, boxHeight);
          // redraw second clicked box
          fill( Colors[boxesWide*j+i]);
          rect( XPositions[i], YPositions[j], boxWidth, boxHeight);
        }
      }
    }
  }
}
*/
