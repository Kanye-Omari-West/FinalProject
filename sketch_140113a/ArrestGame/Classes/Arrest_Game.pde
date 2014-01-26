class ArrestGame {
  Meter m1;
  ProgressBar p1;
  Timer t1;

  ArrestGame() {
    m1 = new Meter(5);
    p1 = new ProgressBar(height-40, 5);
  }

  void run() {


    m1.update();
    p1.go(m1);
  }
}

