import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Quest q1;
Intro i;
GameOver g;
Minim minim;
AudioPlayer song;

boolean lose;
int gameState = 3;

void setup() {
  size(displayWidth, displayHeight);
  q1 = new Quest();
  i = new Intro();
  g = new GameOver();
  q1.updateGame();
  
  minim = new Minim(this);
  song = minim.loadFile("KanyePiano.mp3");
  song.play();
  song.loop();
  
}

void draw() {
  background(255);
  lose = q1.g1.gameOver;

  if (!lose) {
    if (q1.g1.gameWon) {
      gameState += 1;
      q1.updateGame();
    }
    else {
      q1.runGame();
    }
  } 
  else if (lose && mousePressed) {
    g.Restart();
  }
  else {
    g.Display();
  }
}

