class Intro {
  PImage Kanye, KanyeFlip, Title, Dropout, Graduation, Heartbreak, LR, Yeezus, MBDTF, Bear, Bear2;
  PVector loc1, loc2, loc3, loc4, loc5, loc6, vel;
  int w, l, d;

  Intro() {
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
    loc1 = new PVector(150, height/2 + 750);
    loc2 = new PVector(400, height/2 + 750);
    loc3 = new PVector(650, height/2 + 750);
    loc4 = new PVector(900, height/2 + 750);
    loc5 = new PVector(1150, height/2 + 750);
    loc6 = new PVector(1350, height/2 + 750);
    vel = new PVector(0, 0);
    d = 100;
    w = 400;
    l = 450;
  }

  void Display() {
    background(35, 16, 54);
    imageMode(CENTER);
    textAlign(CENTER);
    image(Kanye, width/2, height/2, w, l);
    image(Title, width/2, height/2 - 300, 700, l);
    image(Bear, width - 100, height/2, 150, 200);
    image(Bear2, 100, height/2, 150, 200);
    fill(128, 14, 42);
    strokeWeight(5);
    rect(200, height/2 - 200, 250, 100);
    rect(width - 450, height/2 - 200, 250, 100);
    textSize(40);
    fill(168, 163, 12);
    text("Start", 325, height/2 - 140);
    text("Instructions", width - 325, height/2 - 140);
  }

  void Albums() {
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

