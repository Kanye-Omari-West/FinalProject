class Meter {
  int goal;
  int count;
  boolean pressed;
  boolean unpressed;
  boolean breathing;
  int position;
  float size;

  Meter(int x) {
    goal = x;
    count = 0;
    position = 0;
    size = 20;
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
        position = 0;
        unpressed = false;
        pressed = true;
      }
    }
    else if (!keyPressed) {
      position = 1;
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
  }

  boolean spaceGoalReached() {
    return (goal == count);
  }

  void display() {
    fill(0);
    noStroke();

    if (position == 1) {
      ellipse(width/2, height/4, size, size);
    }
    else {
      ellipse(width/2, height/2, size, size);
    }
  }
}

