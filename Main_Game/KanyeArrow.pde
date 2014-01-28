class kanyearrow { //Class for the arrow game
  ArrayList<Arrows> arrow = new ArrayList<Arrows>(); //An arraylist of the arrows that fall down the screen
  int Startscreen;

  int timeChange;

  PImage background;
  int score;
  int Life;
  boolean run;
  boolean restart;
  boolean gameOver;
  boolean gameWon;
  
  int savedTime;


  kanyearrow () {
    for (int i = 0; i<1; i++) {
      arrow.add(new Arrows()); // Adds one arrow to the arraylist
    }
    Startscreen = 1;

    timeChange = 0;
    Life=10;


    run = true;
    restart = true;
  }

  void display(Kanye K, Keypad P, GameOverDance G) {
    if (Startscreen>0) {
      savedTime = millis();
    }
    strokeWeight(3);
    textSize(25);
    colorMode(HSB, 360, 100, 100, 200);

    background(RGB, 40, 60, 150);
    imageMode(CENTER);
    if (Startscreen>0) {
      if (run) {
        K.display();
        K.move();
        P.display();

        if (frameCount%25 == 0) { //Adds a new arrow to the arraylist every 25 frames
          arrow.add(new Arrows());
        }

        for (int i = arrow.size()-1; i >=0; i--) { // This for loop gets the arrows in the ArrayList and checks if they have gone too far off the screen
          Arrows b = arrow.get(i);
          b.move();
          b.display();

          if (b.loc.y>height-50) {
            arrow.remove(i);
            G.Life-=1;
          }
        }

        int passedTime =millis() - savedTime;
      }
      fill(0);
      //scoreboard
      text(G.score, 50, 50);
      text("Score", 25, 25);
      text(G.Life, width-50, 50);
      text("Life", width-65, 25);
    }
  }

  void headvibrate(GameOverDance G, Kanye K) { // The function that moves the head around. The bigger kanye gets, the more the head moves around

    if (G.score < 10) {
      K.loc.x+=random(-.5, .5);
    }
    if (G.score >= 10 && G.score <20) {
      K.loc.x+= random(-1.5, 1.5);
    }
    if (G.score >= 20 && G.score <30) {
      K.loc.x+= random(-2.5, 2.5);
    }
    if (G.score >= 30 && G.score <40) {
      K.loc.x+= random(-4, 4);
    }
    if (G.score >= 40 && G.score < 50) {
      K.loc.x+= random(-5, 5);
    }
    if (G.score >= 50 && G.score <60) {
      K.loc.x+= random(-6.5, 6.5);
    }
    if (G.score >= 60 && G.score <70) {
      K.loc.x+= random(-7.5, 7.5);
    }
    if (G.score >=70 && G.score <80) {
      K.loc.x+= random(-8, 8);
    }
  }



  void lifecheck(GameOverDance G, kanyearrow W, Kanye K) { // Checks if the player's life has ran out
    if (G.Life==0) {
      gameOver = true;
    }
  }

  void scorecheck(GameOverDance G, kanyearrow W, Kanye K) { // Checks if the goal number of arrows have been reached
    if (G.score==50) {
      gameWon = true;
      
    }
  }



  void keyboard(GameOverDance G, Kanye K) { // This method governs all the keyboard actions of the game. All four arrow keys are checked in this function
    if (keyPressed) {
      if (key == CODED) {
        for (int i = arrow.size()-1; i >=0; i--) {
          if (keyCode == LEFT && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == width/2-75) {
            G.score++;
            K.d=K.d+5;
            arrow.remove(i);
          }
        }
      }
      for (int i = arrow.size()-1; i >=0; i--) {
        if (keyCode == DOWN && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == width/2-25) {
          G.score++;
          K.d=K.d+5;
          arrow.remove(i);
        }
      }
      for (int i = arrow.size()-1; i >=0; i--) {
        if (keyCode == UP && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == width/2+25) {
          G.score++;
          K.d=K.d+5;
          arrow.remove(i);
        }
      }
      for (int i = arrow.size()-1; i >=0; i--) {
        if (keyCode == RIGHT && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == width/2+75) {
          G.score++;
          K.d=K.d+5;
          arrow.remove(i);
        }
      }
    }
  }
}

