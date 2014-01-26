class ProgressBar {

  float h;
  float progress;
  color c;
  float goal;

  ProgressBar(float startHeight, float g) {
    h = startHeight;
    goal = g;
  }

  void go(Meter m1) {
    float w = (width/goal)*(m1.count);
    fill(0, 255, 0);
    rectMode(CENTER);
    rect(width/2, h-40, w, 20);
  }
}

