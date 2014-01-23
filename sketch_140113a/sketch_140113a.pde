Meter m1;
ProgressBar p1;
Intro i;
GameOver g;
TestGame t;
float GOAL = 30;

void setup() {
  size(displayWidth, displayHeight);
  t = new TestGame();
  i = new Intro();
  g = new GameOver();
  m1 = new Meter(GOAL);
  p1 = new ProgressBar(9*width/10, GOAL);
}

void draw() {
  //  m1.update();
  //  p1.update(m1);
  i.Display();
  i.Albums();
  i.Instructions();
}

