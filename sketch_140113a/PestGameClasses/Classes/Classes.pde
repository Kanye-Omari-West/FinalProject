class PestGame {

  ArrayList<Pest> pests;
  Swatter s1;

  PestGame() {
    pests = new ArrayList<Pest>();

    for (int i = 0; i < 10; i++) {
      pests.add(new Pest());
    }
    s1 = new Swatter();
  }

  void run() {
    for (int i = 0; i < pests.size(); i++) {
      Pest p = pests.get(i);
      p.update();
      p.display();
      p.updateOver();
    }
    s1.display();
  }

  void checkPests() {
    for (int i = 0; i < p1.pests.size(); i++) {
      Pest p = p1.pests.get(i);
      if (p.mouseOver) {
        p1.pests.remove(p);
      }
    }
  }
}

