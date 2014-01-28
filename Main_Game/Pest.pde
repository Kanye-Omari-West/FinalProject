class Pest { // The class that holds the individual pests for the game

  PVector location;
  PVector velocity;
  PImage bee;

  boolean mouseOver; 

  Pest() { // Starts the pest with a random location within the display window
    location = new PVector(random(30, width-30), random(30, height-30));
    velocity = new PVector(random(-15, 15), random(-15, 15));

    bee = loadImage("kanye pest.png");
  }

  void display() { // Displays the image at the location
    imageMode(CENTER);
    image(bee, location.x, location.y, 150, 100);
    imageMode(CORNER);
  }

  void update() { // Makes the pests bounce off the walls and adds the velocity to the location

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

  void updateOver() { //If the distance between the mouse and catcher is less than the width of the pest this becomes true
    if (dist(mouseX, mouseY, location.x, location.y) <= 50) {
      mouseOver = true;
    } 
    else {
      mouseOver = false;
    }
  }
}

