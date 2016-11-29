class complete {

  float x, y, d;

  complete(float x_, float y_, float d_) {
    x = x_;
    y = y_;
    d = d_;
  }

  void display() {
    //println(p.y, c.y);
    pushStyle();
    fill(180, 150, 150);
    rect(x, y, d, d);
    popStyle();

    if (p.y >= y - p.d && p.y <= y + d && p.x >= x - p.d && p.x <= x + d) {
      if (level == 1) {
        level2();
      } else if (level == 2) {
        level3();
      } else if (level == 3) {
        level4();
      } else if (level == 4) {
        p.win = true;
      }
    }
  }
}