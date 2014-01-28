class Swatter { // The swatter used in the Pest Game
  PImage swatter;
  int swat = 1;

  Swatter() {
    swatter = loadImage("fly swatter.png");
  }

  void display() {
    imageMode(CENTER);
    image(swatter, mouseX, mouseY, 150, 150); // Displays it at mouseX and mouseY
    imageMode(CORNER);
  }
  
  
}
