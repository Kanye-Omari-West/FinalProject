class Quest { // The big class that runs all of the minigames

  Game g1; // The game variable that is updates with the minigames or titlescreens, which all inherit the game class. By using polymorphism, the complexity of governing switching games is greatly decreased.

  Intro i; // Intro screen
  GameOver g;


  Quest() {
    g1 = new Game();
  }

  void runGame() {
    g1.run();
  }


  void updateGame() {
    //Using a switch block in a method gives us a lot of flexibility in the game. To debug, all you have to do is change gameState to a different number. This removes the need for complex if statements
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
      g1 = new TitleScreen("Oh man, Taylor Swift is such a Kanye Pest\nUse the Mouse to squish her!");
      break;
    case 3:
      g1 = new PestGame();
      break;
    case 4:
      g1 = new TitleScreen("Time to get Kanye Dressed\n Don't let the Fresh Clothes Touch the Floor");
      break;
    case 5:
      g1 = new dressKanye();
      break;
    case 6:
      g1 = new TitleScreen("Show your moves to prove you're the Kanye Best\nUse the Arrow Keys to Dance");
      break;
    case 7:
      g1 = new ArrowGame();
      break;
    case 8:
      g1 = new GameOver("Final.jpg", "You Actually Did It - You Win");
      break;
    }
  }
}

