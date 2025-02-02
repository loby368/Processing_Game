float t = 0;
float tPrev = 0;
float endGame = 0;

void setup() {
   size(1300,800);
   background(0);
   ellipseMode(CENTER);
   int frames = 50;
   frameRate(frames);
}

//Create new enemies
Enemy Enemy1 = new Enemy(random(20,700), random(0.5,6), random(10, 50));
Enemy Enemy2 = new Enemy(random(20,700), random(0.5,6), random(10, 50));
Enemy Enemy3 = new Enemy(random(20,700), random(0.5,6), random(10, 70));
Enemy Enemy4 = new Enemy(random(20,700), random(0.5,6), random(10, 70));

//Create Player
Player Player1 = new Player();

//Main Loop
void draw() {
  
  //Game over screen
  //Didn't have time to code the collission detection but I would return the 
  //position of the enemies into variabels and then test them agains the position of
  //player1 to cause an endGame state change
  if (endGame == 1) {
  background(100);
  textSize(100);
  text("Game Over", 400, 400);
  }
  //If game is not over, continue on
  else {
  background(0);
  Enemy1.update();
  Enemy2.update();
  Enemy3.update();
  Enemy4.update();
  
  Player1.update();
  }
}

class Player
{
  float xPos = 200;
  float yPos = 600;
  float size = 50;
  float yVel = 0;
  
  //Player object
  Player() {
  }
  
  //yPosition accelerates downwards unless mouse is pressed
  void update() {
    if (mousePressed == true) {
      yVel = -10;
    }
    yVel += 0.5;
    
    yPos += yVel;
    
    //Check out of bounds
    if (yPos < 0 || yPos > 1300) {
     endGame = 1; 
    }
    //Update image
    fill(10,200,10);
    ellipse(xPos,yPos,size,size);
  }
  
}


class Enemy
{
  float xPos, yPos, xSpeed, size;
  
  //Enemy Object
  Enemy(float yp, float xs, float sz) {
    xPos = 1300;
    yPos = yp;
    xSpeed = xs;
    size = sz;
  }
  
  void update() {
    //Moves from right to left
    xPos -= xSpeed;
    //Re-loop to right when past screen
    if (xPos < 0) {
      xPos = 1300;
    }
    
    //Didnt get around to coding the collission detection but I would return the position of 
    // the enemy so it could be an input into a Player1 check function
    // EnemyPos() {
    //  float EnemyPos = [xPos,yPos];
    //  return EnemyPos;
    //}
    
    fill(200,10,10);
    ellipse(xPos,yPos,size,size);
  }
}
