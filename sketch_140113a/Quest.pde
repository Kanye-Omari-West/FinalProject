class Quest {

  Game g1;

  Intro i;
  GameOver g;


  Quest() {
    i = new Intro();
    g1 = new Game();
  }

  void runGame() {
    g1.run();
  }

  void runTitle() {
  }

  void updateGame() {
    switch (gameState) {
    case 1:
      g1 = new TestGame();
      break;
    case 3:
      g1 = new PestGame();
      break;
    case 5:
      g1 = new dressKanye();
      break;
    }
  }

  void updateTitle() {
  }
}

