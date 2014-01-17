Meter m1;

void setup() {
  size(800, 600);
  m1 = new Meter(30);
}

void draw() {
  background(255);
  m1.update();
}
