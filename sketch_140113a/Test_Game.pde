class TestGame {

  GameOver g;
  PImage Classroom;
  boolean q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, w, i, l;

  TestGame() {
    g = new GameOver();
    Classroom = loadImage("School Desk.jpg");
    i = true;
    q1 = false; 
    q2 = false;
    q3 = false;
    q4 = false;
    q5 = false;
    q6 = false;
    q7 = false;
    q8 = false;
    q9 = false;
    q10 = false;
    w = false;
    l = false;
  }

  void Display() {
    image(Classroom, 0, 0, displayWidth, displayHeight);
    rectMode(CENTER);
    fill(35, 16, 54);
    rect(width/2, height/2 - 350, 700, 100);
    rect(width/2, height/2 - 100, 1000, 50);
    rect(width/2, height/2, 1000, 50);
    rect(width/2, height/2 + 100, 1000, 50);
    rect(width/2, height/2 + 200, 1000, 50);
    textSize(30);
    textAlign(CENTER);
    fill(255);
  }

  void Questions() {
    textMode(CENTER);
    textSize(30);
    if (q1 == true) {
      text("Which celebrity did Kanye interrupt?", width/2, height/2 - 350);
      text("Jay-Z", width/2, height/2 - 100);
      text("Beyonce", width/2, height/2);
      text("Taylor Swift", width/2, height/2 + 100);
      text("Ms. Arnold", width/2, height/2 + 200);
    }
    if (q2 == true) {
      text("Which is one of Kanye's recent nicknames?", width/2, height/2 - 350);
      text("Zeus the Second", width/2, height/2 - 100);
      text("Hova", width/2, height/2);
      text("God 2", width/2, height/2 + 100);
      text("Yeezus", width/2, height/2 + 200);
    }
    if (q3 == true) {
      text("What is the name of Kanye's daughter?", width/2, height/2 - 350);
      text("North", width/2, height/2 - 100);
      text("Jose", width/2, height/2);
      text("Jesus", width/2, height/2 + 100);
      text("He does not have a daughter", width/2, height/2 + 200);
    }
    if (q4 == true) {
      text("Who does not have the answers?", width/2, height/2 - 350);
      text("You", width/2, height/2 - 100);
      text("Sway", width/2, height/2);
      text("Chris Martin", width/2, height/2 + 100);
      text("Sanservino", width/2, height/2 + 200);
    }
    if (q5 == true) {
      text("What label does Kanye West run?", width/2, height/2 - 350);
      text("GOOD Music", width/2, height/2 - 100);
      text("Shady Records", width/2, height/2);
      text("YMCMB", width/2, height/2 + 100);
      text("Every Record Label. Ever", width/2, height/2 + 200);
    }
    if (q6 == true) {
      text("What is Kanye's middle name?", width/2, height/2 - 350);
      text("Omari", width/2, height/2 - 100);
      text("Apollo", width/2, height/2);
      text("Abdul-Jabbar", width/2, height/2 + 100);
      text("Ayo", width/2, height/2 + 200);
    }
    if (q7 == true) {
      text("Where is Kanye from?", width/2, height/2 - 350);
      text("Heaven", width/2, height/2 - 100);
      text("The Bermuda Triangle", width/2, height/2);
      text("Chicago", width/2, height/2 + 100);
      text("Brooklyn", width/2, height/2 + 200);
    }
    if (q8 == true) {
      text("Which animal was used as Kanye's mascot?", width/2, height/2 - 350);
      text("A bear", width/2, height/2 - 100);
      text("A lion", width/2, height/2);
      text("A giraffe", width/2, height/2 + 100);
      text("An elephant", width/2, height/2 + 200);
    }
    if (q9 == true) {
      text("What was Kanye's debut album?", width/2, height/2 - 350);
      text("Nothing Was the Same", width/2, height/2 - 100);
      text("Yeezus", width/2, height/2);
      text("The College Dropout", width/2, height/2 + 100);
      text("Late Registration", width/2, height/2 + 200);
    }
    if (q10 == true) {
      text("Who is the modern day Leonardo Da Vinci?", width/2, height/2 - 350);
      text("Kanye", width/2, height/2 - 100);
      text("Kanye", width/2, height/2);
      text("Kanye", width/2, height/2 + 100);
      text("Kanye", width/2, height/2 + 200);
    }
    if (w == true) {
      text("CONGRATULATIONS! You passed!", width/2, height/2 - 350);
    }
    //After w = true, the next game should start
  }

  void Advance() {
    if (i == true) {
      text("Help Kanye West with his Kanye Test!", width/2, height/2 - 350);
    }
    if (q1 == true || q2 == true || q3 == true || q4 == true || q5 == true || q6 == true || q7 == true || q8 == true || q9 == true || q10 == true || w == true) {
      i = false;
    } 
    if (i == true || q2 == true || q3 == true || q4 == true || q5 == true || q6 == true || q7 == true || q8 == true || q9 == true || q10 == true || w == true) {
      q1 = false;
    }  
    if (q1 == true || i == true || q3 == true || q4 == true || q5 == true || q6 == true || q7 == true || q8 == true || q9 == true || q10 == true || w == true) {
      q2 = false;
    }
    if (q1 == true || q2 == true || i == true || q4 == true || q5 == true || q6 == true || q7 == true || q8 == true || q9 == true || q10 == true || w == true) {
      q3 = false;
    } 
    if (q1 == true || q2 == true || q3 == true || i == true || q5 == true || q6 == true || q7 == true || q8 == true || q9 == true || q10 == true || w == true) {
      q4 = false;
    } 
    if (q1 == true || q2 == true || q3 == true || q4 == true || i == true || q6 == true || q7 == true || q8 == true || q9 == true || q10 == true || w == true) {
      q5 = false;
    } 
    if (q1 == true || q2 == true || q3 == true || q4 == true || q5 == true || i == true || q7 == true || q8 == true || q9 == true || q10 == true || w == true) {
      q6 = false;
    } 
    if (q1 == true || q2 == true || q3 == true || q4 == true || q5 == true || q6 == true || i == true || q8 == true || q9 == true || q10 == true || w == true) {
      q7 = false;
    }
    if (q1 == true || q2 == true || q3 == true || q4 == true || q5 == true || q6 == true || q7 == true || i == true || q9 == true || q10 == true || w == true) {
      q8 = false;
    } 
    if (q1 == true || q2 == true || q3 == true || q4 == true || q5 == true || q6 == true || q7 == true || q8 == true || i == true || q10 == true || w == true) {
      q9 = false;
    }
    if (q1 == true || q2 == true || q3 == true || q4 == true || q5 == true || q6 == true || q7 == true || q8 == true || q9 == true || i == true || w == true) {
      q10 = false;
    }
    if (q1 == true || q2 == true || q3 == true || q4 == true || q5 == true || q6 == true || q7 == true || q8 == true || q9 == true || q10 == true || i == true) {
      w = false;
    }
    //This assures that no two texts appear at the same time

      if (i == true && mousePressed && mouseX > width/2 - 350 && mouseX < width/2 + 350 && mouseY < height/2 - 300 && mouseY > height/2 - 400) {
      q1 = true;
    }
    if (q1 == true && mousePressed && mouseY > height/2 + 75 && mouseY < height/2 + 125) {
      q2 = true;
    }
    if (q2 == true && mousePressed && mouseY > height/2 + 175 && mouseY < height/2 + 225) {
      q3 = true;
    }
    if (q3 == true && mousePressed && mouseY > height/2 - 125 && mouseY < height/2 - 75) {
      q4 = true;
    }
    if (q4 == true && mousePressed && mouseY > height/2 - 25 && mouseY < height/2 + 25) {
      q5 = true;
    }
    if (q5 == true && mousePressed && mouseY > height/2 - 125 && mouseY < height/2 - 75) {
      q6 = true;
    }
    if (q6 == true && mousePressed && mouseY > height/2 - 125 && mouseY < height/2 - 75) {
      q7 = true;
    }
    if (q7 == true && mousePressed && mouseY > height/2 + 75 && mouseY < height/2 + 125) {
      q8 = true;
    }
    if (q8 == true && mousePressed && mouseY > height/2 - 125 && mouseY < height/2 - 75) {
      q9 = true;
    }
    if (q9 == true && mousePressed && mouseY > height/2 + 75 && mouseY < height/2 + 125) {
      q10 = true;
    }
    if (q10 == true && mousePressed && mouseY > height/2 - 125 && mouseY < height/2 + 225) {
      w = true;
    }
    //These if statements shift through each question after it is answered correctly
  }

  void Lose() {
    if (l == true) {
      g.Display();
    }
    //This leads to the Game Over screen.
    
//    if (q1 == true && mousePressed && mouseY > height/2 + 175 && mouseY < height/2 + 225) {
//      l = true;
//    }
//    if (q1 == true && 
  }
}

