class GameOver {

  PImage KS;

  GameOver() {
    KS = loadImage("Kanye and Sway.png");
  }

  void Display() {
    image(KS, 0, 0, displayWidth, displayHeight);
  }
}

