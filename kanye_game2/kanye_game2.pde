class Arrowgame{
  
ArrayList<Arrows> arrow = new ArrayList<Arrows>();

int Startscreen=0;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
PImage Kanye;
PImage background;
PImage background1; 
PImage ddr;
PImage awesome; 
int score=0;
int Life=5; 
boolean run = true; 
boolean restart=true; 
GameOver G;
Winner W;
Kanye K; 
Keypad P;
Arrows A;

int savedTime;
int totalTime=100000;

Arrowgame () {
  if (Startscreen>0) {
    savedTime=millis();
  }
  G = new GameOver();
  W = new Winner();
  P = new Keypad();
  
  ddr = loadImage ("ddr.png");

  strokeWeight(3);
  textSize(25);
  colorMode(HSB, 360, 100, 100, 200);

  K = new Kanye ();
  Kanye = loadImage("kanye.png");
  background = loadImage("background.jpg");
  size(background.width, background.height);
  
//adds arrows
  for (int i = 0; i<1;i++) {
    arrow.add(new Arrows());
   
  }
}

void display() {
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
        Life-=1;
      }
      
      }
     

      int passedTime =millis() - savedTime; 

    }
    fill(0);
    //scoreboard
    text(score, 50, 50);
    text("Score", 25, 25);
    text(Life, width-50, 50);
    text("Life", width-65, 25);
  }
  if (score < 10) {
    K.loc.x+=random(-.5, .5);
  }
  if (score >= 10 && score <20) {
    K.loc.x+= random(-1.5, 1.5);
  }
  if (score >= 20 && score <30) {
    K.loc.x+= random(-2.5, 2.5);
  }
  if (score >= 30 && score <40) {
    K.loc.x+= random(-4, 4);
  }
  if (score >= 40 && score < 50) {
    K.loc.x+= random(-5, 5);
  }
  if (score >= 50 && score <60) {
    K.loc.x+= random(-6.5, 6.5);
    if (score >=70 && score <80) {
      K.loc.x+= random(-8, 8);
    }
  }

  if (Life==0) {
    G.ender();
  }
  if (score==80) {
    W.win();
  }

}

void keyPressed() {
  if (key == CODED) {
    for (int i = arrow.size()-1; i >=0; i--) {
      if (keyCode == LEFT && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == 425) {
        score++;
         K.d=K.d+5;
        arrow.remove(i);
       
      }
    }
  }
   for (int i = arrow.size()-1; i >=0; i--) {
      if (keyCode == DOWN && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == 475) {
        score++;
         K.d=K.d+5;
        arrow.remove(i);
      }
}
   for (int i = arrow.size()-1; i >=0; i--) {
      if (keyCode == UP && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == 525) {
        score++;
         K.d=K.d+5;
        arrow.remove(i);
      }
}
for (int i = arrow.size()-1; i >=0; i--) {
      if (keyCode == RIGHT && arrow.get(i).loc.y > 650 && arrow.get(i).loc.y <750 && arrow.get(i).loc.x == 575) {
        score++;
         K.d=K.d+5;
        arrow.remove(i);
      }
}
}
}



