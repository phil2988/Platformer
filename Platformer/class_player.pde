float jumpPower = 9;

class player {

  float x, y, d, gravity = 0.2, gravityAccel = 0, horAccel = 0, accel, deathTime = 180;
  boolean inAir = true, isOnGround = false, canJumpAgain = true, canMoveAgain = true, fall = true, death = false, tutorial = true;

  player(float x_, float y_, float d_) {
    x = x_;
    y = y_;
    d = d_;
  }

  void display() {
    rect(x, y, d, d);
  }  

  void physics() {

    //Moves player to the sides when buttons are pressed
    x += horAccel;

    //Physics fror when player is in the air
    if (inAir) {
      canJumpAgain = false;
      if (fall) {
      gravityAccel -= gravity;
      }
      y -= gravityAccel;
      isOnGround = false;
    }
    if (!inAir) {
      gravityAccel = 0; 
      canJumpAgain = true;
    }

    //Collision with ground
    if (y + d >= groundy +10) {
      gravityAccel = 0;
      y = groundy - d;
      canJumpAgain = true;
      death = true;
    }
    if (death){
      death();
    }
  }

  //Called when death = true
  void death() {
    level = 0;
    deathTime -= 1;
    pushStyle();
    textAlign(CENTER);
    textSize(90);
    text("Game Over", width/2, height/2);
    popStyle();
     p.x = 10000;
     p.y = -10000;
     pl.x = 10000;
     pl.y = 10000;
     pl.x2 = 10000;
     pl2.x = 10000;
     pl2.y = 10000;
     pl2.x2 = 10000;
     pl3.x = 10000;
     pl3.y = 10000;
     pl3.x2 = 10000;
     c.x = -10000;
     c.y = 10000;
     groundx = -10000;
     groundy = 10000;
     groundx2 = -10000;
     groundy2 = 10000;
     
     //Called when 3 seconds has pa
     if (deathTime == 0){
       death = false;
       deathTime = 180;
       level1();
     }
     
     if(level == 1 || level == 2){
       tutorial = true;
     }
     
  }
  
  
}