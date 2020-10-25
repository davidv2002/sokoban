import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1;
AudioPlayer song2;

void soundPopulation() {
  minim = new Minim(this);
  song1 = minim.loadFile("Beat_Your_Competition.mp3");
  song2 = minim.loadFile("Glass_and_Metal_Collision.mp3");
  mute = true;

  song();
}
void wallSound() {
  if (mute == true) {
  } else {
    song2.play();
    song2.rewind();
  }
}

void song() {
  if (mute == true) {
    song1.loop();
    mute = false;
  } else {
    song1.pause();
    song1.rewind();
    mute = true;
  }
}
