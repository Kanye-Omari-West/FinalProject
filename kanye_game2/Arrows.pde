class Arrows{
  PVector loc, vel,acc;
  PImage image;
  int arrow;
  int d; 
  int y;
  int x;
  
  Arrows(){
    d=50;
    y=49;
    x=0;
    arrow = int(random(1,5));
    
    vel = new PVector(0, 5);
    acc = new PVector (0, x);
    loc = new PVector (425,0);
    
    if (arrow ==1){
      image = loadImage ("left arrow.png");
      loc.x=425;
    }
    if (arrow == 2) {
      image = loadImage ("down arrow.png");
      loc.x=425+50;
    }
    if (arrow == 3) {
      image = loadImage("Up arrow.png");
      loc.x=425+100;
    }
    if (arrow == 4) {
      image = loadImage ("Right arrow.png");
      loc.x=425+150;
      
    }
  }
  
  void display () {
    image(image,loc.x, loc.y, d,y);

  }
  void move(){
    vel.add(acc);
    loc.add(vel); 
    
  }
  void remove (){
    loc.y = 2*height;
    vel.set(0,0);
  }
 
}
      
