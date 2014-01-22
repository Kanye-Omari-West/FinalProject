Meter m1;
ProgressBar p1;
Intro i;
GameOver g;
float GOAL = 30;

void setup() {
  size(displayWidth, displayHeight);
  i = new Intro();
  g = new GameOver();
  m1 = new Meter(GOAL);
  p1 = new ProgressBar(9*width/10, GOAL);
}

void draw() {
  //  m1.update();
  //  p1.update(m1);
  g.Display();
}

