import ddf.minim.*;

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

PImage i1;
PImage i2;
Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;
enemy e = new enemy(0, 0, 0);
player p = new player(0, 0, 0);
platform pl = new platform(0, 0, 0);
platform pl2 = new platform(0, 0, 0);
platform pl3 = new platform(0, 0, 0);
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
  i1 = loadImage("Nom1.PNG");
  i2 = loadImage("Nom2.PNG");
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
  }else if (level == 5) {
    level5();
  }
  minim = new Minim(this);
  player = minim.loadFile("0477.wav");
  player2 = minim.loadFile("Mario Coin.WAV");
  player3 = minim.loadFile("Kalimba.mp3");
  
  player3.loop();
  player3.play();
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
  e.movement();

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