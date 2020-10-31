import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioPlayer song4;

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

void wallSound() {
  if (mute == true) {
  } else {
    song2.play();
    song2.rewind();
  }
}

void pushSound() {
  if (mute == true) {
  } else {
    song3.play();
    song3.rewind();
  }
}

void winSound() {
  if (mute == true) {
  } else {
    song4.play();
    song4.rewind();
  }
}
