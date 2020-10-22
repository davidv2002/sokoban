void panal() {
  interfacePop();
  fill(white);
  square(0, gameHeight, heightOffset);

  fill(black);
  textAlign (CENTER, CENTER);
  textFont(buttonFont, height/20);
  text(level, 0, gameHeight, heightOffset, heightOffset);
}
