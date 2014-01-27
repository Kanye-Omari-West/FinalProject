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
    case -1:
      g1 = new Intro();
      break;
    case 0:
      g1 = new TitleScreen("Time for a Kanye Test");
      break;
    case 1:
      g1 = new TestGame();
      break;
    case 2:
      g1 = new TitleScreen("Oh man, Taylor Swift is such a Kanye Pest");
      break;
    case 3:
      g1 = new PestGame();
      break;
    case 4:
      g1 = new TitleScreen("Time to get Kanye Dressed");
      break;
    case 5:
      g1 = new dressKanye();
      break;
    case 6:
      g1 = new TitleScreen("Show your moves to prove you're the Kanye Best");
      break;
    case 7:
      g1 = new ArrowGame();
      break;
    case 8:
      g1 = new GameOver("Final.jpg", "You Actually Did It");
      break;
    }
  }

  void updateTitle() {
  }
}

