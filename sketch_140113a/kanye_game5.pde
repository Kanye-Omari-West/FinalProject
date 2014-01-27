class kanyearrow {
  ArrayList<Arrows> arrow = new ArrayList<Arrows>();
  int Startscreen;
  int oldTime;
  int currentTime;
  int timeChange;

  PImage background;
  int score;
  int Life;
  boolean run;
  boolean restart;

  int savedTime;
  int totalTime;

  kanyearrow () {
    for (int i = 0; i<1; i++) {
      arrow.add(new Arrows());
    }
    Startscreen = 0;
    oldTime = 0;
    currentTime = 0;
    timeChange = 0;
    Life=5;
   
    
    savedTime = 0;
    totalTime = 100000;

    
    run = true;
    restart = true;
    background = loadImage("background.jpg");
  }

  void display(Kanye K, Keypad P, GameOverDance G) {
    if (Startscreen>0) {
      savedTime = millis();
    }
    strokeWeight(3);
    textSize(25);
    colorMode(HSB, 360, 100, 100, 200);
    size(background.width, background.height);
    background(RGB, 40, 60, 150);
    imageMode(CENTER);
    if (Startscreen<=0) {
      textSize(40);
      text("Kanye West", 250, 100);
      textSize(20);
      text("Press Space to Start!", 250, 200);
    }
    //changes value so you can play
    if (keyPressed && key == ' ')
    {
      Startscreen ++;
    }
    if (Startscreen>0) {
      if (run) {
        background(background);
        K.display();
        K.move();
        P.display();

        if (frameCount%25 == 0) {
          arrow.add(new Arrows());
        }

        for (int i = arrow.size()-1; i >=0; i--) {
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

  void headvibrate(GameOverDance G, Kanye K) {

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
  


  void lifecheck(GameOverDance G, kanyearrow W, Kanye K) {
    if (G.Life==0) {
      G.ender(W, K);
    }
  }

  void scorecheck(GameOverDance G, kanyearrow W, Kanye K) {
    if (G.score==80) {
      G.win(W, K);
    }
  }



  void keyboard(GameOverDance G, Kanye K) {
    if (keyPressed) {
      if (key == CODED) {
        for (int i = arrow.size()-1; i >=0; i--) {
          if (keyCode == LEFT && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == 425) {
            G.score++;
            K.d=K.d+5;
            arrow.remove(i);
          }
        }
      }
      for (int i = arrow.size()-1; i >=0; i--) {
        if (keyCode == DOWN && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == 475) {
          G.score++;
          K.d=K.d+5;
          arrow.remove(i);
        }
      }
      for (int i = arrow.size()-1; i >=0; i--) {
        if (keyCode == UP && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == 525) {
          G.score++;
          K.d=K.d+5;
          arrow.remove(i);
        }
      }
      for (int i = arrow.size()-1; i >=0; i--) {
        if (keyCode == RIGHT && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == 575) {
          G.score++;
          K.d=K.d+5;
          arrow.remove(i);
        }
      }
    }
  }
}

