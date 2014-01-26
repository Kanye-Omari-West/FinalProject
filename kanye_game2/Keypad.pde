class Keypad {
  
  PVector loc;
  int x;
  int y=700;


  Keypad () {
    imageMode(CENTER);
    loc = new PVector (500,y);
    
  }
  
  void display(){
    image(ddr,loc.x, loc.y, ddr.width, ddr.height);
  }
}
   

