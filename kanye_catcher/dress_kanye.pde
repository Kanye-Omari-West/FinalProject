class dressKanye {
  clothes[] clo = new clothes[200];

  dressKanye () {
    for (int i=0; i<clo.length; i++) {
      clo[i] = new clothes();
    }
  }

  void run() {
    for (int i = 0; i<clo.length; i++) {
      clo[i].display();
      clo[i].move();
    }
  }
}

