class GameOver extends Game { // The end screen of the game. Because it extends the game class we can easily wedge it into the main program

  // Declarig of Variables
  PImage KS;
  PVector loc;
  boolean t;
  int d = 30;
  String words;

  GameOver() {
    KS = loadImage("Kanye and Sway.png");
    loc = new PVector(width/2, -100);
    words = "GAME OVER";
  }
  
  //The screen that displays when you win. Because of the alternate constructor, we eliminate the need for a seperate class that does the same thing
  GameOver(String s, String w) {

    KS = loadImage(s);
    loc = new PVector(width/2, -100);
    words = w;
  }
  void run() { // The function that overrides the superclass's
    Display();
    
  }

  void Display() {
    
    
    // All the code governs visual elements of the end screen
    background(35, 16, 54);
      imageMode(CENTER);
      image(KS, width/2, height/2, 1000, 500);
      rectMode(CENTER);
      fill(255, 0, 0);
      textAlign(CENTER);
      textSize(100);
      text(words, loc.x, loc.y);
      loc.y+=10;
    
    
    // The following boolean checks if the text should stop falling and adds a cool animation for the user to apreciate
    if (loc.y >= height/6) {
      loc.y = height/6;
      fill(255);
      text("Click to restart", width/2, 34*height/36);
      textSize(40);
      rectMode(CENTER);
    }
  }

  void Restart() { // This function easily restarts the game when called
    gameState = -1;
    q1 = new Quest(); 
    q1.updateGame();
  }
}

