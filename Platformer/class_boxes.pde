class platform {

  float x, y, y2, x2, under;
  boolean leftCollision = false, rightCollision = false, detect = false;
  platform(float x_, float y_, float x2_, float y2_) {
    x = x_;
    y = y_;
    x2 = x2_;
    y2 = y2_;
  }

  void display() {
    under = p.y + p.d - y;
    line(x, y, x2, y);

    //player collision
    if (p.x >= x - p.d && p.x <= x2 && p.y < y){
      
      //problem line under here
      if (p.y >= y - p.d){
       
        
        if (under >= 0){
           detect = true;
        
        p.y -= under;
        p.gravityAccel = 0;
        p.canJumpAgain = true;
        }
      }else detect = false;
    }
    
     if (p.x >= b.x - p.d && p.x <= b.x2 && p.y >= y){
      if (p.y <= y){
        
      }
      
    }
  }
}