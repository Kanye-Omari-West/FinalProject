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
  boolean gameOver;
  boolean gameWon;

  int savedTime;
  int totalTime;

  kanyearrow () {
    for (int i = 0; i<1; i++) {
      arrow.add(new Arrows());
    }
    Startscreen = 1;
    oldTime = 0;
    currentTime = 0;
    timeChange = 0;
    Life=10;


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

    background(RGB, 40, 60, 150);
    imageMode(CENTER);
    if (Startscreen>0) {
      if (run) {
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
      gameOver = true;
    }
  }

  void scorecheck(GameOverDance G, kanyearrow W, Kanye K) {
    if (G.score==50) {
      gameWon = true;
      
    }
  }



  void keyboard(GameOverDance G, Kanye K) {
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

