

class enemy{

  float x, start_x, y, d;
  int timer = 0, mouthC = 0;
  enemy(float x_, float y_, float d_){
    x = x_;
    y = y_;
    d = d_;
    start_x = x;
    
    
  }
  
  void movement(){
    
    if (level == 5){
    timer +=1;
    
    if (timer == 20){
      mouthC +=1;
      timer = 0;
    }
    
    x -= 5;
    
    if (mouthC == 0 || mouthC == 2 || mouthC == 4 || mouthC == 6 || mouthC == 8 || mouthC == 10 || mouthC == 12 || mouthC == 14){
      image(i2, x, y);
 
    }else if (mouthC == 1 || mouthC == 3 || mouthC == 5 || mouthC == 7 || mouthC == 9 || mouthC == 11 || mouthC == 13){
      image(i1, x, y);
    }
    
    if (x <= 0){
      x = width;
      timer = 0;
      mouthC = 0;
    }
    }
    
  }
}