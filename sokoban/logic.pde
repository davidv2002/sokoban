void baseLogic() {
  for ( i = 0; i < boxesWide; i++) {
    for ( j = 0; j < boxesTall; j++) {
      if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1]) {
        if (Colors[boxesWide*j+i] == red) {
        } else if (abs(storedIndexX-i)+abs(storedIndexY-j) == 1) {
          swap();
        }
      }
    }
  }
}

void swap() {
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
  storedIndexX = i;
  storedIndexY = j;
}
