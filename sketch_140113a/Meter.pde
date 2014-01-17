class Meter {
  int goal;
  int count;

  boolean pressed;
  boolean unpressed;
  boolean breathing;

  int position;
  float size;

  PImage kw1, kw2, kw3, kw4;

  Meter(int x) {
    goal = x;
    count = 0;
    position = 0;
    size = 10;

    kw1 = loadImage("kanye_cpr1.png");
    kw2 = loadImage("kanye_cpr2.png");
    kw3 = loadImage("kanye_cpr3.png");
    kw4 = loadImage("kanye_cpr4.png");
  }

  void update() {
    checkSpace();
    checkMouse();
    resetSpace();
    display();
  }

  void checkSpace() {
    if (keyPressed) {
      if (key == ' ') {
        position = 1;
        unpressed = false;
        pressed = true;
      }
    }
    else if (!keyPressed) {
      position = 0;
      unpressed = true;
    }
  }

  void resetSpace() {
    if (pressed && unpressed) {
      unpressed = false;
      pressed = false;
      count += 1;
    }
  }

  void checkMouse() {
    breathing = mousePressed;
    if (breathing) {
      position = 3;
    }
    else if (size >= 20) {
      position = 2;
    }
  }

  boolean spaceGoalReached() {
    return (goal == count);
  }

  void display() {
    fill(0);
    noStroke();

    switch (position) {

    case 3:
      image(kw4, 0, 0, width, height);
      break;
    case 2:
      image(kw3, 0, 0, width, height);
      break;
    case 1:  
      image(kw2, 0, 0, width, height);
      break;
    case 0: 
      image(kw1, 0, 0, width, height);
      break;
    }
  }
}

