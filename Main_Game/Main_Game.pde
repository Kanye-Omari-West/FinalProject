/* Sehmon Burnam
Marcella Plazas
Luigi S
Isaiah Spicer
John Stoumbos

KanyeQuest 2k14 */


//Needed to use sound in the game
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

//These are the "super" classes that hold many other game classes for easier resetting
Quest q1; // Contains all the minigames for one session
Intro i; // The game start screen that includes the instructions and the start button
GameOver g; // The gameover screen that will bring you to the main menu once you click 
Minim minim; // Needed to use sound in the game
AudioPlayer song; // The song file is loaded by the player

boolean lose; // Runs true if the game is lose, used to govern the end screen
int gameState = 1; // This number tells the quest which game to load and play

void setup() {
  size(displayWidth, displayHeight); // Allows for easy scaling of the game (to be implemented at another time)
  
  //Sets the superclass variabes to new instances of themselves
  q1 = new Quest();
  i = new Intro();
  g = new GameOver();
  
  //This function is vital to the game, it read the gameState and displays the needed game accordingly
  q1.updateGame();
  
  
  minim = new Minim(this); //Needed to use sound in processing
  song = minim.loadFile("KanyePiano.mp3"); // The song that loops in the background
  
  // THe following commands tell the song to play and never stop
  song.play();
  song.loop();
  
}

void draw() {
  background(255);
  
  lose = q1.g1.gameOver; //This sets the lose variable to the gameOver variable of any game that is running

  if (!lose) { // If the player has not lost
    if (q1.g1.gameWon) { // Check if the game running is won
      gameState += 1; // This increases the gameState by one
      q1.updateGame(); // This updates the quest according to the new gameState
    }
    else {
      q1.runGame(); // Tells the game to run
    }
  } 
  else if (lose && mousePressed) { // If the mouse is pressed at the end screen 
    g.Restart();
  }
  else {
    g.Display();
  }
}

