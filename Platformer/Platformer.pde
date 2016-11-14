float pl_x = 100;
float pl_y = 600;
float pl_d = 180;
float pl2_x = 400;
float pl2_y = 500;
float pl2_d = 480;
float pl3_x = 700;
float pl3_y = 400;
float pl3_d = 780;

int level = 1;

player p = new player(115, 600 - 50, 50);
platform pl = new platform(pl_x, pl_y, pl_d);
platform pl2 = new platform(pl2_x, pl2_y, pl2_d);
platform pl3 = new platform(pl3_x, pl3_y, pl3_d);
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
}

void draw() {


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
  c.display();
  
  if (p.tutorial){
       tutorial();
     }
}

void level1() {
  level = 1;
  p.x = 115;
  p.y = 550;
  p.gravityAccel = 0;
  pl.x = 100;
  pl.y = 600;
  pl.x2 = 180;
  pl2.x = 400;
  pl2.y = 500;
  pl2.x2 = 480;
  pl3.x = 700;
  pl3.y = 400;
  pl3.x2 = 780;
  c.x = 1000;
  c.y = 300;
  groundx = 0;
  groundy = 700;
  groundx2 = 1400;
  groundy2 = 700;
}

void level2() {
  level = 2;
  p.x = 115;
  p.y = 550;
  p.gravityAccel = 0;
  pl.x = 100;
  pl.y = 600;
  pl.x2 = 250;
  pl2.x = 180;
  pl2.y = 400;
  pl2.x2 = 260;
  pl3.x = 500;
  pl3.y = 400;
  pl3.x2 = 780;
  groundx = 0;
  groundy = 700;
  groundx2 = 1400;
  groundy2 = 700;
}