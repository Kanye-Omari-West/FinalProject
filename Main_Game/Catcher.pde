class catcher { // The catcher for the Clothing game

  //Declaring variables
  
  PImage kanye;
  int score;
  int y;
  int d;
  int w,h;
  boolean gameOver;

// Constructor for the Catcher
  catcher() {
    imageMode(CENTER);
    kanye = loadImage ("kanye pixel underwear.jpg"); // Loads image from the data folder
    w=75;
    h=125;
    y= height-h/2;
  }

  void display() { // Displays the catcher at the mouse X location
    image (kanye, mouseX, y,w,h);
  }

  void catchClothes (clothes fall, Timer t) { // Governs the interaction between the catcher and clothing object
    if (dist(mouseX, y, fall.loc.x, fall.loc.y) < h/2 + fall.d/2) {
      fall.remove();
      score+=1;
    }
    if(fall.loc.y >= height){ // If any clothing item has reached the floor, the game is over
       gameOver = true; 
    }
  }
}
