class Pest {

  PVector location;
  PVector velocity;
  PImage bee;

  boolean mouseOver;

  Pest() {
    location = new PVector(random(30, width-30), random(30, height-30));
    velocity = new PVector(random(-15, 15), random(-15, 15));

    bee = loadImage("kanye pest.png");
  }

  void display() {
    imageMode(CENTER);
    image(bee, location.x, location.y, 150, 100);
    imageMode(CORNER);
  }

  void update() {

    if (location.y >= height-30) {
      velocity.y = -velocity.y;
    }
    if (location.y <= 30) {
      velocity.y = -velocity.y;
    }
    if (location.x >= width-40) {
      velocity.x = -velocity.x;
    }
    if (location.x <= 40) {
      velocity.x = -velocity.x;
    }

    location.add(velocity);
  }

  void updateOver() {
    if (dist(mouseX, mouseY, location.x, location.y) <= 50) {
      mouseOver = true;
    } 
    else {
      mouseOver = false;
    }
  }
}

