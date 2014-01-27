
class GameOverDance {
  //Introduces boolean run.
  boolean run;
  boolean run2;
  int score;
  int Life;
  boolean gameOver;

  GameOverDance() {
    run = true;
    run2 = false;
    Life = 5;
  } 
  //Creates ender() function for the GameOver class.
  void ender(kanyearrow W, Kanye K) {
    //Sets run to false to stop game.
    run= false;
    W.arrow.clear();
    //Sets certain background.
    background(125, 200, 255);
    //If the 'r' key is pressed this will restart the game.
  }
}

