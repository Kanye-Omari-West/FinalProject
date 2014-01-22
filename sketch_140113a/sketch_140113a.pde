Meter m1;
ProgressBar p1;
Intro i;
GameOver g;
Instructions in;
float GOAL = 30;

void setup() {
  size(displayWidth, displayHeight);
  in = new Instructions();
  i = new Intro();
  g = new GameOver();
  m1 = new Meter(GOAL);
  p1 = new ProgressBar(9*width/10, GOAL);
}

void draw() {
  //  m1.update();
  //  p1.update(m1);
  in.Display();
}

