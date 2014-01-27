class TestGame extends Game {

  GameOver g;
  PImage Classroom;
  boolean q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, w, i, l;

  TestGame() {

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

  void run() {
    Display();
    Questions();
    Advance();
  }
  void Display() {
    imageMode(CENTER);
    image(Classroom, width/2, height/2, displayWidth, displayHeight);
    rectMode(CENTER);
    fill(35, 16, 54);
    rect(width/2, height/6, 700, 100);
    rect(width/2, 2*height/6, 1000, 50);
    rect(width/2, 3*height/6, 1000, 50);
    rect(width/2, 4*height/6, 1000, 50);
    rect(width/2, 5*height/6, 1000, 50);
    textSize(30);
    textAlign(CENTER);
    fill(255);
  }

  void Questions() {
    textMode(CENTER);
    textSize(30);
    if (q1 == true) {
      text("Which celebrity did Kanye interrupt?", width/2, height/6);
      text("Jay-Z", width/2, 2*height/6);
      text("Beyonce", width/2, 3*height/6);
      text("Taylor Swift", width/2, 4*height/6);
      text("Ms. Arnold", width/2, 5*height/6);
    }
    if (q2 == true) {
      text("Which is one of Kanye's recent nicknames?", width/2, height/6);
      text("Zeus the Second", width/2, 2*height/6);
      text("Hova", width/2, 3*height/6);
      text("God 2", width/2, 4*height/6);
      text("Yeezus", width/2, 5*height/6);
    }
    if (q3 == true) {
      text("What is the name of Kanye's daughter?", width/2, height/6);
      text("North", width/2, 2*height/6);
      text("Jose", width/2, 3*height/6);
      text("Jesus", width/2, 4*height/6);
      text("He does not have a daughter", width/2, 5*height/6);
    }
    if (q4 == true) {
      text("Who does not have the answers?", width/2, height/6);
      text("You", width/2, 2*height/6);
      text("Sway", width/2, 3*height/6);
      text("Chris Martin", width/2, 4*height/6);
      text("Sanservino", width/2, 5*height/6);
    }
    if (q5 == true) {
      text("What label does Kanye West run?", width/2, height/6);
      text("GOOD Music", width/2, 2*height/6);
      text("Shady Records", width/2, 3*height/6);
      text("YMCMB", width/2, 4*height/6);
      text("Every Record Label. Ever", width/2, 5*height/6);
    }
    if (q6 == true) {
      text("What is Kanye's middle name?", width/2, height/6);
      text("Omari", width/2, 2*height/6);
      text("Apollo", width/2, 3*height/6);
      text("Abdul-Jabbar", width/2, 4*height/6);
      text("Ayo", width/2, 5*height/6);
    }
    if (q7 == true) {
      text("Where is Kanye from?", width/2, height/6);
      text("Heaven", width/2, 2*height/6);
      text("The Bermuda Triangle", width/2, 3*height/6);
      text("Chicago", width/2, 4*height/6);
      text("Brooklyn", width/2, 5*height/6);
    }
    if (q8 == true) {
      text("Which animal was used as Kanye's mascot?", width/2, height/6);
      text("A bear", width/2, 2*height/6);
      text("A lion", width/2, 3*height/6);
      text("A giraffe", width/2, 4*height/6);
      text("An elephant", width/2, 5*height/6);
    }
    if (q9 == true) {
      text("What was Kanye's debut album?", width/2, height/6);
      text("Nothing Was the Same", width/2, 2*height/6);
      text("Yeezus", width/2, 3*height/6);
      text("The College Dropout", width/2, 4*height/6);
      text("Late Registration", width/2, 5*height/6);
    }
    if (q10 == true) {
      text("Who is the modern day Leonardo Da Vinci?", width/2, height/6);
      text("Kanye", width/2, 2*height/6);
      text("Kanye", width/2, 3*height/6);
      text("Kanye", width/2, 4*height/6);
      text("Kanye", width/2, 5*height/6);
    }
    if (w == true) {
      text("CONGRATULATIONS! You passed!", width/2, height/6);
      gameWon = true;
    }
    //After w = true, the next game should start
  }

  void Advance() {
    if (i == true) {
      text("Help Kanye West with his Kanye Test!", width/2, height/6);
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

      if (i == true && mousePressed) {
      q1 = true;
    }
    if (q1 == true && mousePressed && mouseY > 4*height/6 + - 50 && mouseY < 4*height/6 + 50) {
      q2 = true;
    } 

    if (q2 == true && mousePressed && mouseY > 5*height/6 - 50 && mouseY < 5*height/6 + 50) {
      q3 = true;
    } 

    if (q3 == true && mousePressed && mouseY > 2*height/6 - 50 && mouseY < 2*height/6 + 50) {
      q4 = true;
    } 

    if (q4 == true && mousePressed && mouseY > 3*height/6 - 50 && mouseY < 3*height/6 + 50) {
      q5 = true;
    } 

    if (q5 == true && mousePressed && mouseY > 2*height/6 - 50 && mouseY < 2*height/6 + 50) {
      q6 = true;
    } 

    if (q6 == true && mousePressed && mouseY > 2*height/6 - 50 && mouseY < 2*height/6 + 50) {
      q7 = true;
    } 

    if (q7 == true && mousePressed && mouseY > 4*height/6 - 50 && mouseY < 4*height/6 + 50) {
      q8 = true;
    } 

    if (q8 == true && mousePressed && mouseY > 2*height/6 - 50 && mouseY < 2*height/6 + 50) {
      q9 = true;
    } 

    if (q9 == true && mousePressed && mouseY > 4*height/6 - 50 && mouseY < 4*height/6 + 50) {
      q10 = true;
    } 

    if (q10 == true && mousePressed) {
      w = true;
    }
    //These if statements shift through each question after it is answered correctly
  }
}

