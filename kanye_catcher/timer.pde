class Timer {
  int oldtime;
  int score;


  Timer() {
    oldtime = millis();
    score=0;
  } 

  float returnSeconds() {
    float s = ((millis() - oldtime) / 1000);
    return s;
  }
}

