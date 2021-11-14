// library imports
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// sound setup
Minim minim;
AudioPlayer song0;
AudioPlayer effect0;
AudioPlayer effect1;
AudioPlayer effect2;

void popSound() {
  minim = new Minim(this);
  song0 = minim.loadFile("sound/Beat_Your_Competition.mp3");
  effect0 = minim.loadFile("sound/Hit.mp3");
  effect1 = minim.loadFile("sound/Push.mp3");
  effect2 = minim.loadFile("sound/Win.mp3");
  sound = true;
}

void song() {
  if (sound) {
    song0.pause();
    song0.rewind();
    sound = false;
  } else {
    song0.loop();
    sound = true;
  }
}

void wallSound() {
  if (sound) {
    effect0.play();
    effect0.rewind();
  }
}

void pushSound() {
  if (sound) {
    effect1.play();
    effect1.rewind();
  }
}

void winSound() {
  if (sound) {
    effect1.pause();
    effect1.rewind();
    effect2.play();
    effect2.rewind();
  }
}
