class Arrows{ // The arrows for the ArrowGame

  // Declares the variables for one arrow
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
    //chooses random arrow from list 
    arrow = int(random(1,5));
    
    vel = new PVector(0, 5);
    acc = new PVector (0, x);
    loc = new PVector (425,0);
    
    //loads arrows and sets loc for each image
    if (arrow ==1){
      image = loadImage ("left arrow.png");
      loc.x=width/2-75;
    }
    if (arrow == 2) {
      image = loadImage ("down arrow.png");
      loc.x=width/2-25;
    }
    if (arrow == 3) {
      image = loadImage("Up arrow.png");
      loc.x=width/2+25;
    }
    if (arrow == 4) {
      image = loadImage ("Right arrow.png");
      loc.x=width/2+75;
      
    }
  }
  
  void display () {
    // displays arrow
    image(image,loc.x, loc.y, d,y);

  }
  void move(){
    // adds vel and acc 
    vel.add(acc);
    loc.add(vel); 
    
  }
  void remove (){
    // removes arrow 
    loc.y = 2*height;
    vel.set(0,0);
  }
 
}
      
