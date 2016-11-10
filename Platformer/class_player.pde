float jumpPower = 8;

class player {

  float x, y, d, gravity = 0.2, gravityAccel = 0, horAccel = 0, accel;
  boolean inAir = true, isOnGround = false, canJumpAgain = true, canMoveAgain = true;

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
      gravityAccel -= gravity;
      y -= gravityAccel;
      isOnGround = false;
    }
    if (!inAir) {
      gravityAccel = 0; 
      canJumpAgain = true;
    }

    //Collision with ground
    if (y + d >= groundy) {
      gravityAccel = 0;
      y = groundy - d;
      canJumpAgain = true;
    }
  }


  void movement() {
  }
}