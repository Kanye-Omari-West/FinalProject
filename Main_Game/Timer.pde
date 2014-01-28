//Good ole Timer class that is useful in so many situations
class Timer {
  float oldtime;

  Timer() {
    oldtime = millis();
  } 

  float returnSeconds() {
    float s = ((millis() - oldtime) / 1000); // returns the time that has passed since the timer has been created
    return s;
  }
}

