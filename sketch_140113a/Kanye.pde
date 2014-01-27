class Kanye {
  PVector loc; 
  float d;
  PVector move;
  int moveSpeed; 
  PImage image;

  Kanye() {
    loc = new PVector(500, 450);
    d = 33;
    image = loadImage("kanye.png");
    moveSpeed = 5;
    move = new PVector();
  }

  void display() {
    //creates kanye head image 
    fill(0);
    stroke(0, 0, 100);
    image(image, loc.x, loc.y, d, d);
  }

  void move() {
    loc.x = constrain(loc.x, 0, width);
    loc.y = constrain(loc.y, 0, height);
   
  }
}

