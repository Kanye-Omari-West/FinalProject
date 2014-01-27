class TitleScreen extends Game{
  String words;
  Timer t1;

  TitleScreen(String _s) {
    words = _s;
    t1 = new Timer();
  }

  void run() {
    if(t1.returnSeconds() >= 3){
       gameWon = true; 
    }
    background(0);
    textSize(40);
    textAlign(CENTER);
    fill(255);
    text(words, width/2, height/2);
  }
}

