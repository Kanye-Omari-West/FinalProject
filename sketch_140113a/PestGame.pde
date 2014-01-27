class PestGame extends Game {

  ArrayList<Pest> pests;
  Swatter s1;
  Timer t1;

  PestGame() {
    pests = new ArrayList<Pest>();

    for (int i = 0; i < 10; i++) {
      pests.add(new Pest());
    }
    s1 = new Swatter();
    t1 = new Timer();
  }

  void run() {
    if (t1.returnSeconds() >= 20) {
      gameOver = true;
    }
    fill(0);
    textSize(50);
    text(int(-1*(t1.returnSeconds()-20)), width/2, height/2);
    checkPests();
    for (int i = 0; i < pests.size(); i++) {
      Pest p = pests.get(i);
      p.update();
      p.display();
      p.updateOver();
    }
    s1.display();

    if (pests.size() == 0) {
      gameWon = true;
    }
  }

  void checkPests() {
    if (mousePressed) {
      for (int i = 0; i < pests.size(); i++) {
        Pest p = pests.get(i);
        if (p.mouseOver) {
          pests.remove(p);
        }
      }
    }
  }
}

