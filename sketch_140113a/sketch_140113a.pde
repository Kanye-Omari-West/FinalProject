Meter m1;
ProgressBar p1;
float GOAL = 30;

void setup() {
  size(800, 600);
  m1 = new Meter(GOAL);
  p1 = new ProgressBar(9*width/10, GOAL);
}

void draw() {
  m1.update();
  p1.update(m1);
}

