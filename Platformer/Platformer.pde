float pl_x = 100;
float pl_y = 600;
float pl_d = 180;
float pl2_x = 400;
float pl2_y = 500;
float pl2_d = 480;
float pl3_x = 700;
float pl3_y = 400;
float pl3_d = 780;

int level = 4;

player p = new player(115, 600 - 50, 50);
platform pl = new platform(pl_x, pl_y, pl_d);
platform pl2 = new platform(pl2_x, pl2_y, pl2_d);
platform pl3 = new platform(pl3_x, pl3_y, pl3_d);
platform pl4 = new platform(0, 0, 0);
platform pl5 = new platform(0, 0, 0);
platform pl6 = new platform(0, 0, 0);
platform pl7 = new platform(0, 0, 0);
complete c = new complete(1000, 300, 50);

//ground variables
float groundx = 0;
float groundy = 700;
float groundx2 = 1400;
float groundy2 = 700;

void setup() {
  fullScreen();
  //size(800, 800);
  color(HSB);

  if (level == 1) {
    level1();
  } else if (level == 2) {
    level2();
  } else if (level == 3) {
    level3();
  } else if (level == 4) {
    level4();
  }
}

void draw() {

  println(p.horAccel);
  //println(p.x, p.y);

  background(20, 65, 400);

  //draws the ground in the world
  line(groundx, groundy, groundx2, groundy2);

  //updates classes
  p.display();
  p.physics();

  pl.display();
  pl2.display();
  pl3.display();
  pl4.display();
  pl5.display();
  pl6.display();
  pl7.display();
  c.display();

  if (p.tutorial) {
    tutorial();
  }
}