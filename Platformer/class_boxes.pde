class platform {

  float x, y, y2, x2, under;
  boolean leftCollision = false, rightCollision = false;
  platform(float x_, float y_, float x2_, float y2_) {
    x = x_;
    y = y_;
    x2 = x2_;
    y2 = y2_;
  }

  void display() {
    under = p.y + p.d - y;
    println(under);
    line(x, y, x2, y);

    //player collision
    if (p.x >= b.x - p.d && p.x <= b.x2 && p.y < y){
      if (p.y >= y - p.d){
        if (under <= 5){
        
        p.y -= under;
        p.gravityAccel = 0;
        p.canJumpAgain = true;
        }
      }
    }
    
     if (p.x >= b.x - p.d && p.x <= b.x2 && p.y >= y){
      if (p.y <= y){
        
      }
      
    }
  }
}