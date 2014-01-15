Meter m1;

void setup() {
  size(400, 400);
  m1 = new Meter(30);
}

void draw() {
  background(255);
  m1.update();
  println(m1.breathing);
}

