class Kanye { // The head that moves around in the arrow game

  // All variables that are used to create the moving image
  PVector loc; 
  float d;
  PVector move;
  int moveSpeed; 
  PImage image;

  Kanye() {
    loc = new PVector(width/2, height/2);
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

