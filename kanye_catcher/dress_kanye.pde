class dressKanye {
  clothes[] clo = new clothes[200];
  Timer time;
  int oldTime;
  int score;
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
    fill(0);
    textSize(100);
    text("Score:" + time.score, 120, 100);
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
  }
}

