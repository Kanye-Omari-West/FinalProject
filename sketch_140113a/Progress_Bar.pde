class ProgressBar {
  
  float h;
  float progress;
  color c;
  float goal;

  ProgressBar(float startHeight, float g) {
    h = startHeight;
    goal = g;
  }

  void update(Meter m1) {
    float w = (width/goal)*(m1.count);
    fill(0);
    rectMode(CENTER);
    rect(width/2, h, w, 20);
    println(w);
  }
}

