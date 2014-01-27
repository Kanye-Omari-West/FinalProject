class clothes { // A clothing item

  PVector loc, vel, acc;
  PImage image;
  int choice;
  int d;

  clothes () {
    d = 60;
    choice = int(random(1, 5));
    loc = new PVector (random(1, width), 0);
    vel = new PVector (0, 5);
    
    // Sets the image to a random clothing item, based on the choice number
    if (choice == 1) {
      image = loadImage ("shirt.png");
    }
    if (choice == 2) {
      image = loadImage ("glasses.png");
    }
    if (choice == 3) {
      image = loadImage ("pants.png");
    }
    if (choice == 4) {
      image = loadImage ("shoes.png");
    }
  }

  void display () { // Displays the 
    image(image, loc.x, loc.y, d, d);
  }
  void move() {
    
    loc.add(vel);
  }
  void remove () {
    loc.x = random(30, width-30);
    loc.y = -50;
    vel.set (0, 0);
  }
}

