void tutorial() {
  pushStyle();
  //Tutorial for level 1
  if (level == 1) {

    textAlign(CENTER);
    textSize(15);
    text("Move by using the A and D keys", (pl.x + pl.x2)/2, pl.y - 150);
    text("Jump by pressing the w key", (pl.x + pl.x2)/2, pl.y - 120);

    if (p.x >= 300) {
      text("If you hit the ground, you die", (pl2.x + pl2.x2)/2, pl2.y - 150);
    }

    if (p.x >= 700) {
      text("Catch this square to proceed in levels", (c.x + c.d/2), c.y - 120);
    }
  }
  if (level == 2) {
    textAlign(CENTER);
    text("If you hit a platform from the bottom", (pl.x + pl.x2)/2, pl.y - 150);
    text("You can stil get onto it", (pl.x + pl.x2)/2, pl.y - 120);

    if (p.x >= 300) {
      text("Platforms can also vary in size", (pl3.x + pl3.x2)/2, pl3.y - 150);
    }
  }
  popStyle();
}