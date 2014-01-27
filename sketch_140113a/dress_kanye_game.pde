class dressKanye extends Game {

  clothes[] clo = new clothes[200];
  Timer time;
  int oldTime;
  int index;
  catcher undy;

  dressKanye () {
    for (int i=0; i<clo.length; i++) {
      clo[i] = new clothes();
    }
    undy = new catcher();
    oldTime = 0;
    index=0;
    time = new Timer();
  }

  void run() {
    gameOver = undy.gameOver;
    fill(0);
    textSize(100);
    text("Score:" + undy.score, 200, 100);
    undy.display();
    for (int i = 0; i<index; i++) {
      clo[i].display();
      clo[i].move();
      undy.catchClothes(clo[i], time);
    }
    if (millis()- oldTime >= 1000) {
      index++;
      oldTime = millis();
    }

    if (undy.score >= 25) {
      gameWon = true;
    }
  }
}

