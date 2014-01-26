class Kanye {
  PVector loc; 
  float d;
  PVector move;
  int moveSpeed; 

  Kanye() {
    loc = new PVector(500, 450);
    d = 33;
    moveSpeed = 5;
    move = new PVector();
  }

  void display() {
    fill(0);
    stroke(0, 0, 100);
    image(Kanye, loc.x, loc.y, d, d);
  }

  void move() {
    loc.x = constrain(loc.x, 0, width);
    loc.y = constrain(loc.y, 0, height);
   
  }
}

