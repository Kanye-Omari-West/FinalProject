class Keypad {
  PImage ddr;
  PVector loc;
  int x;
  int y=700;


  Keypad () {
    imageMode(CENTER);
    ddr = loadImage("ddr.png");
    loc = new PVector (500,y);
    
  }
  
  void display(){
    //displays keypad
    image(ddr,loc.x, loc.y, ddr.width, ddr.height);
  }
}
   

