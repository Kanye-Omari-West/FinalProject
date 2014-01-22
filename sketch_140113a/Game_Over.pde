class GameOver {

  PImage KS;
  PVector loc;

  GameOver() {
    KS = loadImage("Kanye and Sway.png");
    loc = new PVector(width/2, height + 100);
  }

  void Display() {
    image(KS, 0, 0, displayWidth, displayHeight);
    rectMode(CENTER);
    fill(0);
    rect(loc.x, loc.y, 600, 200);
    fill(255, 0, 0);
    textAlign(CENTER);
    textSize(100);
    text("GAME OVER", loc.x, loc.y);
    loc.y-=10;
    if (loc.y == height/2) {
      loc.y = height/2;
      noLoop();
      textSize(40);
      text("Try Again?", loc.x, height/2 + 75);
    }
  }
}

