class GameOver {

  PImage KS;
  PVector loc;
  boolean t;
  int d = 30;

  GameOver() {
    KS = loadImage("Kanye and Sway.png");
    loc = new PVector(width/2, -100);
  }

  void Display() {
    if (t == false) {
      background(35, 16, 54);
      imageMode(CENTER);
      image(KS, width/2, height/2, 1000, 500);
      rectMode(CENTER);
      fill(255, 0, 0);
      textAlign(CENTER);
      textSize(100);
      text("GAME OVER", loc.x, loc.y);
      loc.y+=10;
    }
    if (loc.y >= height/6) {
      loc.y = height/2;
      noLoop();
      textSize(40);
      rectMode(CENTER);
      
    }
  }
}

