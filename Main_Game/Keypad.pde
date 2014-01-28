class Keypad { // The ddr pad that is displayed at the bottom of the screen
  PImage ddr;
  PVector loc;
  int x;
  int y=700;


  Keypad () {
    imageMode(CENTER);
    ddr = loadImage("ddr.png");
    loc = new PVector (width/2,y);
    
  }
  
  void display(){
    //displays keypad
    image(ddr,loc.x, loc.y, ddr.width, ddr.height);
  }
}
   

