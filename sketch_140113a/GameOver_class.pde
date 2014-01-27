
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
    if (keyPressed && key == 'r') {
      //Assigns values to the following.
      run=true;
      score=0;
      Life=5;
      W.savedTime=millis();
      K.d=33;
      K.loc.x= 500;
      K.loc.y=450;
      //text to center.
      gameOver = true;
    }
  }
  //  void win(kanyearrow W, Kanye K) {
  //    //Sets run to false to stop game.
  //    run2= false;
  //    W.arrow.clear();
  //
  //    //Sets certain background.
  //    background(125, 200, 255);
  //    //If the 'r' key is pressed this will run as true.
  //    if (keyPressed && key == 'r') {
  //      //Assigns values to the following.
  //      run2=true;
  //      score=0;
  //      Life=5;
  //
  //      K.d=33;
  //      K.loc.x= 500;
  //      K.loc.y=450;
  //    }
  //    //Aligns text to center.
  //    textAlign(CENTER);
  //    //Sets text size to 50.
  //    textSize(50);
  //    //Displays certain text lines.
  //    text("You Win!", 250, 250);
  //    textSize(20);
  //    //Displays text line.
  //    text("'R' TO RESTART", 250, 450);
  //  }
}

