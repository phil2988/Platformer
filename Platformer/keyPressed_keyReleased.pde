void keyPressed (){
  if (key == 'w'){
    if (p.canJumpAgain){
    p.gravityAccel = 7;
    p.inAir = true;
    p.canJumpAgain = false;
    }
  }
  if (key == 'd'){

    p.horAccel = 3;
    
  }
  if (key == 'a'){
   
    p.horAccel = -3;

   
  }
}

void keyReleased(){

  if (key == 'd'){
    if (!keyPressed){
      p.horAccel = 0;
    }
  }
  if (key == 'a'){
    if (!keyPressed){
    p.horAccel = 0;
    }
  }



}