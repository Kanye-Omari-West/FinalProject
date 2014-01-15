class clothes {
  PVector loc, vel, acc;
  PImage image;
  int choice;
  int d;

  clothes () {
    d = 80;
    choice = int(random(1,4));
    loc = new PVector (random(1, width), 0);
    vel = new PVector (0, 1);
    acc = new PVector (0, 0.1);
    if (choice == 1) {
      image = loadImage ("shirt.jpg");
    }
    if (choice == 2) {
      image = loadImage ("glasses.jpg");
    }
    if (choice == 3) {
      image = loadImage ("pants.jpg");
    }
    if (choice == 4) {
      image = loadImage ("shoes.jpg");
    }
  }

  void display () { 
    image(image, loc.x, loc.y, d, d);
 
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void remove () {
    loc.y = 2*height;
    vel.set (0, 0);
  }
}

