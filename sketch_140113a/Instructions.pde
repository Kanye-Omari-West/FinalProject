class Instructions {

  PImage KI;

  Instructions() {
    KI = loadImage("Kanye Instructions.png");
  }

  void Display() {
    background(35, 16, 54);
    imageMode(CENTER);
    image(KI, width/2, height/2 - 300, 500, 400);
    fill(128, 14, 42);
    rectMode(CENTER);
    strokeWeight(5);
    rect(width/2, height - 100, 300, 100);
    fill(155, 176, 21);
    textSize(25);
    textAlign(CENTER);
    text("Help Kanye West on his Kanye Quest to be the Kanye Best!", width/2, height/2); 
    text("During this Kanye Quest you will have to get Kanye Dressed, defeat some Kanye Pests, pass a Kanye Test, and rescue someone from Kanye Cardiac Arrest.", width/2, height/2 + 40);
    text("We Kanye Suggest that you Kanye Rest before this Kanye Quest so that you can be at your Kanye Best.", width/2, height/2 + 80);
    text("Instructions are given before each game so there is no need to Kanye Guess your Kanye Test", width/2, height/2 + 120);
    textSize(60);
    text("BACK", width/2, height - 80);
  }
  // This is shown whenever conditions to lose a game are met. Try again leads back to the original intro (see Intro Class).
}

