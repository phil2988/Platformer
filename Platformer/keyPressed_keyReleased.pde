boolean dPress = false;
boolean aPress = false;

void keyPressed () {
  if (key == 'w') {
    if (p.canJumpAgain) {
      p.gravityAccel = jumpPower;
      p.inAir = true;
      p.canJumpAgain = false;
    }
  }
  if (key == 'd') {
    dPress = true;
  }
  if (key == 'a') {
    aPress = true;
  }
}

void keyReleased() {

  if (key == 'd') {
    dPress = false;
  }
  if (key == 'a') {
    aPress = false;
  }
}