player p = new player(300, 600, 50);
platform b1 = new platform(500, 600, 580, 600);

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

  //println(b1.collision, p.inAir);

  background(10, 100, 100);

  //draws the ground in the world
  line(groundx, groundy, groundx2, groundy2);

  //updates classes
  p.display();
  p.movement();
  p.physics();

  b1.display();
 
}