class Meter {
  float goal;
  float count;

  boolean pressed;
  boolean unpressed;
  boolean breathing;
  boolean goalMet;

  int position;
  float size;

  PImage kw1, kw2, kw3;

  Meter(float x) {
    goal = x;
    count = 0;
    position = 0;
    size = 10;

    kw1 = loadImage("kw1.jpg");
    kw2 = loadImage("kw2.jpg");
    kw3 = loadImage("kw3.jpg");
  }

  void update() {
    if (goalMet) {
      checkMouse();
    }
    else {
      checkSpace();
    }
    spaceGoalReached();
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
      goal -= 1; 
      position = 2;
    }
    else {
      position = 0;
    }
  }



  void spaceGoalReached() {
    if (count == goal) {
      goalMet = true;
    }
    else if (count == 0) {
      goalMet = false;
    }
  }

  void display() {
    println(count);
    fill(0);
    noStroke();

    switch (position) {

    case 2:
      image(kw1, 0, 0, width, height);
      break;
    case 1:  
      image(kw2, 0, 0, width, height);
      break;
    case 0: 
      image(kw3, 0, 0, width, height);
      break;
    }
  }
}

