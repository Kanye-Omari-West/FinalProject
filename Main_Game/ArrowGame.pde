class ArrowGame extends Game { // The super class for the Arrow mini-game
  
  //Declares the variables needed for the game
  kanyearrow W;  
  Kanye K;
  Keypad P;

  
  GameOverDance G;

  ArrowGame() {
    
    // Sets the variables to new instances of themselves
    W = new kanyearrow();
    G = new GameOverDance();
    K = new Kanye();
    P = new Keypad();
  }

  void run() {
    background (255);
    
    // The functions that govern the game
    W.display(K, P, G);
    W.headvibrate(G, K);
    W.lifecheck(G, W, K);
    W.scorecheck(G, W, K);
    W.keyboard(G, K);
    
    // Sets the super variables to the variables of the score governor
    gameOver = W.gameOver;
    gameWon = W.gameWon;
  }
}

