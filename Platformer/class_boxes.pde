

class platform {

  float x, y, x2, under;
  boolean leftCollision = false, rightCollision = false;
  platform(float x_, float y_, float x2_) {
    x = x_;
    y = y_;
    x2 = x2_;
  }

  void display() {
    under = p.y + p.d - y;
    line(x, y, x2, y);

    //player collision
    if (p.x >= x - p.d && p.x <= x2 && p.y < y) {

      //problem line under here
      if (p.y >= y - p.d) {


        if (under >= 0 && under <= 15) {

          p.y -= under;
          p.gravityAccel = 0;
          p.canJumpAgain = true;
        }
      }
    }
  }
}