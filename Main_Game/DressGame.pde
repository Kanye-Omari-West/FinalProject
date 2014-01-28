class dressKanye extends Game { // The superclass for the Dressing Mini-game

  clothes[] clo = new clothes[50]; // Gives the array a size of 50 because the game ends at 25
  Timer time; // The timer used to keep track of time
  int oldTime;
  int index;
  catcher undy; // The catcher (Kanye)

  dressKanye () {
    for (int i=0; i<clo.length; i++) {
      clo[i] = new clothes(); // Fills the array with clothing variables
    }
    undy = new catcher();
    oldTime = 0;
    index=0;
    time = new Timer();
  }

  void run() {
    gameOver = undy.gameOver; // The game's gameover function is based off of a method in the catcher class
    fill(0);
    textSize(100);
    text("Clothes Left:" + -1*(undy.score-25), 200, 100); // Dispays the amount of clothes left to catch
    undy.display();
    for (int i = 0; i<index; i++) { // This forloop dispays and moves the clothing items
      clo[i].display();
      clo[i].move();
      undy.catchClothes(clo[i], time); // Determines if the item is caught
    }
    if (millis()- oldTime >= 1000) {
      index++;
      oldTime = millis();
    }

    if (undy.score >= 25) { // THe score needed to win the game
      gameWon = true;
    }
  }
}

