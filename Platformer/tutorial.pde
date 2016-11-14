void tutorial(){
  
  //Tutorial for level 1
  if(level == 1){
    pushStyle();
    textAlign(CENTER);
    textSize(15);
    text("Move by using the A and D keys", 150, 450);
    text("Jump by pressing the w key", 150, 480);
    text("Catch this square to proceed in levels", 1000, 150);
    
    if (p.x >= 300){
      text("if you hit the ground, you die", 440, 300);
    }
    popStyle();
  }
}