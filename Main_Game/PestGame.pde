class PestGame extends Game { // The Main class for the PestGame

  ArrayList<Pest> pests; // The arraylist of pests that is used to display the bees
  Swatter s1;
  Timer t1;

  PestGame() {
    pests = new ArrayList<Pest>(); // The arraylist casted with Pest Objects

    for (int i = 0; i < 10; i++) {
      pests.add(new Pest());
    }
    s1 = new Swatter();
    t1 = new Timer();
  }

  void run() {
    if (t1.returnSeconds() >= 20) { // When 20 seconds have passed the game is over
      gameOver = true;
    }
    fill(0);
    textSize(50);
    text(int(-1*(t1.returnSeconds()-20)), width/2, height/2); // Displays the time left to catch all the pests
    checkPests();
    for (int i = 0; i < pests.size(); i++) { //Updates and displays the pests grabbed by get()
      Pest p = pests.get(i);
      p.update();
      p.display();
      p.updateOver();
    }
    s1.display();

    if (pests.size() == 0) { // If the arrayList is empty then the game is won
      gameWon = true;
    }
  }

  void checkPests() { // Removes the pest if the mouse is pressed over it
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

