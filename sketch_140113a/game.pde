class ArrowGame extends Game{
  kanyearrow W; 
  Kanye K;
  Keypad P;

  GameOverDance G;

  ArrowGame() {

    W = new kanyearrow();
    G = new GameOverDance();
    K = new Kanye();
    P = new Keypad();
  }

  void run() {
    background (255);
    W.display(K, P, G);
    W.headvibrate(G, K);
    W.lifecheck(G, W, K);
    W.scorecheck(G, W, K);
    W.keyboard(G, K);
  }
}



