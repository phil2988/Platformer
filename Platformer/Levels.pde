void level1() {
  level = 1;
  moveSpeed = 2;
  p.gravity = 0.2;
  p.d= 50;
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

void level3(){
  p.d = 25;
  jumpPower = 5;
  moveSpeed = 1.5;
  p.gravity = 0.14;
  level = 3;
  p.x = 100;
  p.y = 600 - p.d;
  p.gravityAccel = 0;
  pl.x = 50;
  pl.y = 600;
  pl.x2 = 150;
  pl2.x = 200;
  pl2.y = 530;
  pl2.x2 = 300;
  pl3.x = 200;
  pl3.y = 390;
  pl3.x2 = 300;
  pl4.x = 50;
  pl4.y = 460;
  pl4.x2 = 150;
  pl5.x = 470;
  pl5.y = 650;
  pl5.x2 = c.x + c.d;
  pl6.x = c.x;
  pl6.y = 550;
  pl6.x2 = c.x + c.d;
  pl7.x = c.x;
  pl7.y = 450;
  pl7.x2 = c.x + c.d;
  groundx = 0;
  groundy = 700;
  groundx2 = 1400;
  groundy2 = 700;
  
}