class ProgressBar{
  float h;
  float w;
  float progress;
  color c;
  
  ProgressBar(float startHeight, Meter m1){
      h = startHeight;
  }
  
  void update(Meter m1){
      w = m1.count;
      
      rect(0, h, w, (height-h));
  }
}
