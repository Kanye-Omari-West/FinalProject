class Intro extends Game {
  PImage Kanye, KanyeFlip, Title, Dropout, Graduation, Heartbreak, LR, Yeezus, MBDTF, Bear, Bear2, KI;
  PVector loc1, loc2, loc3, loc4, loc5, loc6, vel;
  int w, l, d;
  boolean in;

  Intro() {
    KI = loadImage("Kanye Instructions.png");
    Kanye = loadImage("Kanye Head.png");
    KanyeFlip = loadImage("Kanye Head Flip.png");
    Title = loadImage("KanyeQuest.png");
    Dropout = loadImage("College Dropout.jpg");
    Graduation = loadImage("Graduation.jpg");
    Heartbreak = loadImage("Heartbreak.png");
    LR = loadImage("Late Registration.jpg");
    MBDTF = loadImage("MBDTF.jpg");
    Yeezus = loadImage("Yeezus.jpg");
    Bear = loadImage("Kanye Bear.png");
    Bear2 = loadImage("Bear Flip.png");
    loc1 = new PVector(width/6, 32*height/36);
    loc2 = new PVector(2*width/6, 32*height/36);
    loc3 = new PVector(3*width/6, 32*height/36);
    loc4 = new PVector(4*width/6, 32*height/36);
    loc5 = new PVector(5*width/6, 32*height/36);
    loc6 = new PVector(6*width/6, 32*height/36);
    vel = new PVector(0, 0);
    d = 100;
    w = 400;
    l = 450;
    in = false;
  }

  void run() {
    Display();
    Albums();
    Instructions();
  }

  void Display() {
    if (in == false) {
      background(35, 16, 54);
      imageMode(CENTER);
      textAlign(CENTER);
      image(Kanye, width/2, height/2, w, l);
      image(Title, width/2, height/2 - 300, 700, l);
      image(Bear, width - 100, height/2, 150, 200);
      image(Bear2, 100, height/2, 150, 200);
      fill(128, 14, 42);
      strokeWeight(5);
      rectMode(CENTER);
      rect(325, height/2 - 150, 250, 100);
      rect(width - 325, height/2 - 150, 250, 100);
      textSize(40);
      fill(168, 163, 12);
      text("Start", 325, height/2 - 140);
      text("Instructions", width - 325, height/2 - 140);
      //If the Start button is pressed, then the first game should begin.
      //If the Instructions button is pressed, then the Instructions Class should be displayed.
    }
  }

  void Albums() {
    if (in == false) {
      image(Dropout, loc1.x, loc1.y, d, d);
      image(LR, loc2.x, loc2.y, d, d);
      image(Graduation, loc3.x, loc3.y, d, d);
      image(Heartbreak, loc4.x, loc4.y, d, d);
      image(MBDTF, loc5.x, loc5.y, d, d);
      image(Yeezus, loc6.x, loc6.y, d, d);
      loc1.x+=2;
      loc2.x+=2;
      loc3.x+=2;
      loc4.x+=2;
      loc5.x+=2;
      loc6.x+=2;
      if (loc1.x + d/2 > width) {
        loc1.x = 0;
      }
      if (loc2.x + d/2 > width) {
        loc2.x = 0;
      }
      if (loc3.x + d/2 > width) {
        loc3.x = 0;
      }
      if (loc4.x + d/2 > width) {
        loc4.x = 0;
      }
      if (loc5.x + d/2 > width) {
        loc5.x = 0;
      }
      if (loc6.x + d/2 > width) {
        loc6.x = 0;
      }
    }
  }

  void Instructions() {
    if (in == false && mousePressed && mouseX > width - 450 && mouseX < width - 200 && mouseY > height/2 - 200 && mouseY < height/2 - 100) {
      in = true;
    }
    if (in == true) {
      background(35, 16, 54);
      imageMode(CENTER);
      image(KI, width/2, height/2 - 200, 400, 300);
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
    if (in == true && mousePressed && mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > height - 150 && mouseY < height - 50) {
      in = false;
    }
    if (in == false && mousePressed && mouseX <  450 && mouseX > 200 && mouseY > height/2 - 200 && mouseY < height/2 - 100) {
      gameWon = true;
    }
  }
}

