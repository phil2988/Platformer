class box {

  float x, y, d;
  boolean collision = false;
  box(float x_, float y_, float d_) {
    x = x_;
    y = y_;
    d = d_;
  }

  void display() {

    rect(x, y, d, d);

    //player collision
    if (p.x >= x - p.d && p.x <= x + d && p.y >= y - p.d && p.y <= y + d) {
      collision = true;
    } else collision = false;

    if (collision) {
      if(p.x <= x + d && p.y >= y - p.d && p.y <= y + d){
        p.x = x - p.d;
      }
    }
  }
}