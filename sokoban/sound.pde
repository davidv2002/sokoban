import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1;

void soundPopulation() {
  minim = new Minim(this);
  song1 = minim.loadFile("Beat_Your_Competition.mp3");
}

void song() {
  if (mute == false) {
    song1.loop();
    mute = true;
  } else {
    song1.pause();
    song1.rewind();
    mute = false;
  }
}
