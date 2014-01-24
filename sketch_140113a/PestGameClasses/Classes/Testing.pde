PestGame p1;

void setup() {
  size(600, 800);
  p1 = new PestGame();
}

void draw() {
  background(255);
  p1.run();
}

void mousePressed() {
  p1.checkPests();
}

