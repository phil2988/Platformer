void keyPressed () {
  if (key == 'w') {
    if (p.canJumpAgain) {
      p.gravityAccel = jumpPower;
      p.inAir = true;
      p.canJumpAgain = false;
    }
  }
  if (key == 'd') {

    p.horAccel = moveSpeed;
  }
  if (key == 'a') {

    p.horAccel = -moveSpeed;
  }
}

void keyReleased() {

  if (key == 'd') {
    if (!keyPressed) {
      p.horAccel = 0;
    }
  }
  if (key == 'a') {
    if (!keyPressed) {
      p.horAccel = 0;
    }
  }
}