Quest q1;
GameOver g;
int gameState = 1;

void setup() {
  size(displayWidth, displayHeight);
  q1 = new Quest();
  g = new GameOver();
  q1.updateGame();
}

void draw() {
  background(255);
  if (q1.g1.gameOver) {
    g.Display();
  }

  else if (q1.g1.gameWon) {
    gameState += 1;
    q1.updateGame();
  }

  else {
    q1.runGame();
  }
}


