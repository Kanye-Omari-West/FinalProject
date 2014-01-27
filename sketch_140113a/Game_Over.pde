class GameOver extends Game {

  PImage KS;
  PVector loc;
  boolean t;
  int d = 30;
  String words;

  GameOver() {
    KS = loadImage("Kanye and Sway.png");
    loc = new PVector(width/2, -100);
    words = "GAME OVER";
  }
  GameOver(String s, String w) {

    KS = loadImage(s);
    loc = new PVector(width/2, -100);
    words = w;
  }
  void run() {
    Display();
    
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
      text(words, loc.x, loc.y);
      loc.y+=10;
    }
    if (loc.y >= height/6) {
      loc.y = height/6;
      fill(255);
      text("Click to restart", width/2, 34*height/36);
      textSize(40);
      rectMode(CENTER);
    }
  }

  void Restart() {
    gameState = -1;
    q1 = new Quest(); 
    q1.updateGame();
  }
}

