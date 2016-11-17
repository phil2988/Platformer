float jumpPower = 9;
float moveSpeed = 3;

class player {

  float x, y, d, gravity = 0.2, gravityAccel = 0, horAccel = 0, accel, deathTime = 180;
  boolean inAir = true, isOnGround = false, canJumpAgain = true, canMoveAgain = true, fall = true, death = false, tutorial = true, win = false;

  player(float x_, float y_, float d_) {
    x = x_;
    y = y_;
    d = d_;
  }

  void display() {
    pushStyle();
    fill(190, 55, 55);
    rect(x, y, d, d);
    popStyle();
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
    if (y + d > groundy + 5) {
      gravityAccel = 0;
      y = groundy - d;
      canJumpAgain = true;
      death = true;
    }
    if (death){
      death();
    }
    if (win){
      win();
    }
  }

  //Called when death = true
  void death() {
    level = 1;
    deathTime -= 1;
    pushStyle();
    textAlign(CENTER);
    textSize(90);
    text("Game Over", width/2, height/2);
    popStyle();
     p.x = 10000;
     p.y = -10000;
     pl.x = 10000;
     pl.y = 0;
     pl.x2 = 0;
     pl2.x = 0;
     pl2.y = 0;
     pl2.x2 = 0;
     pl3.x = 0;
     pl3.y = 0;
     pl3.x2 = 0;
     pl4.x = 0;
     pl4.y = 0;
     pl4.x2 = 0;
     pl5.x = 0;
     pl5.y = 0;
     pl5.x2 = 0;
     pl6.x = 0;
     pl6.y = 0;
     pl6.x2 = 0;
     pl7.x = 0;
     pl7.y = 0;
     pl7.x2 = 0;
     c.x = -10000;
     c.y = 10000;
     groundx = -10000;
     groundy = 10000;
     groundx2 = -10000;
     groundy2 = 10000;
     
     //Called when 3 seconds has past
     if (deathTime == 0){
       death = false;
       deathTime = 180;
       level1();
     }
     
     if(level == 1 || level == 2){
       tutorial = true;
     }
     
  }
  
  void win(){
    level = 0;
    pushStyle();
    textAlign(CENTER);
    textSize(90);
    text("You Win!!!", width/2, height/2);
    popStyle();
     p.x = 10000;
     p.y = -10000;
     pl.x = 10000;
     pl.y = 0;
     pl.x2 = 0;
     pl2.x = 0;
     pl2.y = 0;
     pl2.x2 = 0;
     pl3.x = 0;
     pl3.y = 0;
     pl3.x2 = 0;
     pl4.x = 0;
     pl4.y = 0;
     pl4.x2 = 0;
     pl5.x = 0;
     pl5.y = 0;
     pl5.x2 = 0;
     pl6.x = 0;
     pl6.y = 0;
     pl6.x2 = 0;
     pl7.x = 0;
     pl7.y = 0;
     pl7.x2 = 0;
     c.x = -10000;
     c.y = 10000;
     groundx = -10000;
     groundy = 10000;
     groundx2 = -10000;
     groundy2 = 10000;
  }
}