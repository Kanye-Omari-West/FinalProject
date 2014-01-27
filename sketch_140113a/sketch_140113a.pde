Quest q1;
Intro i;
GameOver g;
boolean lose;
int gameState = -1;

void setup() {
  size(displayWidth, displayHeight);
  q1 = new Quest();
  i = new Intro();
  g = new GameOver();
  q1.updateGame();
}

void draw() {
  background(255);
  lose = q1.g1.gameOver;
  println(lose);
  if (!lose) {
    if (q1.g1.gameWon) {
      gameState += 1;
      q1.updateGame();
    }
    else {
      q1.runGame();
    }
  } 
  else {
    g.Display();
  }
}

