class TitleScreen {
  String words;

  TitleScreen(String _s) {
    words = _s;
  }

  void run() {
    background(0);
    textSize(40);
    textAlign(CENTER);
    text(words, width/2, height/2);
  }
}

