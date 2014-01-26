class catcher {
  PImage kanye;
  int y;
  int d;
  int w,h;

  catcher() {
    imageMode(CENTER);
    kanye = loadImage ("kanye pixel underwear.jpg");
    w=75;
    h=125;
    y= height-h/2;
  }

  void display() {
    image (kanye, mouseX, y,w,h);
  }

  void catchClothes (clothes fall, Timer t) {
    if (dist(mouseX, y, fall.loc.x, fall.loc.y) < h/2 + fall.d/2) {
      fall.remove();
//      score+=1;
    }
  }
}
