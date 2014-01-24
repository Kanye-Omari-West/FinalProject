int Startscreen=0;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
PImage Kanye;
PImage background;
PImage background1; 
int score=0;
int Life=3; 
boolean run = true; 
boolean restart=true; 
GameOver G;
Winner W;
Kanye K; 

int savedTime;
int totalTime=15000;

void setup(){
  if(Startscreen>0){
    savedTime=millis();
  }
G = new GameOver();
W=new Winner();


  strokeWeight(3);
  textSize(25);
  colorMode(HSB, 360, 100, 100, 200);
  
  K = new Kanye ();
  Kanye = loadImage("kanye.png");
  background = loadImage("background.jpg");
  size(background.width, background.height);
}
  
  void draw() {
    background(RGB,40,60,150);
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
if(Startscreen>0){
  if(run){
    background(background);
    K.display();
    K.move();
  
    int passedTime =millis() - savedTime; 
    if (passedTime > totalTime){
      println("15 seconds have passed");
      text("15 sec pass",200,300);
       G.ender();
       
  }
    
      
    }
  fill(0);
    //scoreboard
    text(score, 50, 50);
    text("Score",25,25);
    text(Life, width-50, 50);
   text("Life",width-65,25);  
}
if(score < 10){
K.loc.x+=random(-.5,.5);
  }
  if (score >= 10 && score <20){
  K.loc.x+= random(-1.5,1.5);
  }
   if (score >= 20 && score <30){
  K.loc.x+= random(-2.5,2.5);
  }
   if (score >= 30 && score <40){
  K.loc.x+= random(-4,4);
  }
   if (score >= 40 && score < 50){
  K.loc.x+= random(-5,5);
  }
   if (score >= 50 && score <60){
  K.loc.x+= random(-6.5,6.5);
   if (score >=70 && score <80){
  K.loc.x+= random(-8,8);
  }
  }
 
if(Life==0){
  G.ender();
}
 if(score==70){
 W.win();
}

}
void mouseClicked(){
    if (K.loc.x+K.d > mouseX && K.loc.x-K.d < mouseX
  && K.loc.y+K.d > mouseY && K.loc.y-K.d < mouseY && score<70){
    score++;
    K.d=K.d+5;
    
  }
 
}

  
    
