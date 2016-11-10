class box{
  
  float x, y, d;
  boolean collision = false;
  box(float x_, float y_, float d_){
    x = x_;
    y = y_;
    d = d_;
  }
  
  void display(){
    
    rect(x, y, d, d);
    
    //player collision
     if((p.y + p.d >= y && p.y <= y + d) && (p.x + p.d >= x && p.x + p.d <= x + 7)){
       p.x = x - p.d;
     }
     if((p.y + p.d >= y && p.y <= y + d) && (p.x >= x + d - 7 && p.x <= x + d)){
       p.x = x + d;
     }
     if((p.y + p.d >= y && p.y + p.d <= y + 7) && p.x <= x + d && p.x + p.d >= x){
       p.y = y - p.d;
       p.inAir = false;
       p.canJumpAgain = true;
     }
     
    }
  }