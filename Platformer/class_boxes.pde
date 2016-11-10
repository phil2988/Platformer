class platform {

  float x, y, y2, x2;
  boolean leftCollision = false, rightCollision = false;
  platform(float x_, float y_, float x2_, float y2_) {
    x = x_;
    y = y_;
    x2 = x2_;
    y2 = y2_;
  }

  void display() {

    line(x, y, x2, y2);

    //player collision
    
  }
}