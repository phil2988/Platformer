player p = new player(50, 700, 50);
platform b = new platform(500, 400, 580, 400);
platform b2 = new platform(300, 500, 380, 500);
platform b3 = new platform(100, 600, 180, 600);

//ground variables
float groundx = 0;
float groundy = 700;
float groundx2 = 1400;
float groundy2 = 700;

void setup() {
  //fullScreen();
  size(800, 800);
  color(HSB);
}

void draw() {
  println(b.detect, b.under, b2.detect, b2.under, b3.detect, b3.under);
  //println(b1.collision, p.inAir);

  background(10, 100, 100);

  //draws the ground in the world
  line(groundx, groundy, groundx2, groundy2);

  //updates classes
  p.display();
  p.movement();
  p.physics();

  b.display();
  b2.display();
  b3.display();
 
}