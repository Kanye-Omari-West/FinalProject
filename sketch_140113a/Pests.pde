class Pests {

  PVector loc;
  PVector vel;
  PImage pest;
  
  

  Pests() {
    loc = new PVector(random(0, width), random(0, height));
    vel = new PVector(random(-10, 10), random(-10, 10));

    pest = loadImage("kanye pest.png");
  }

  void display() {

    image(pest, loc.x, loc.y, 80, 60);
    if (loc.y >= height-30) {
      vel.y = -vel.y;
    }
    else if (loc.y <= 30) {
      vel.y = -vel.y;
    }
    else if (loc.x >= width-40) {
      vel.x = -vel.x;
    }
    else if (loc.x <= 40) {
      vel.x = -vel.x;
    }
  }

  void fall() {
    loc.add(vel);
  }

  void restart(Swatter s) {
    if (mousePressed) {
      s.swat--;
    }
    if (s.swat == 0) {
      loc.x = -100;
    }
  }
}

