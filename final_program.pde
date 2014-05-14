PImage img;
PImage img2;
PImage img3;
Block[] blocks;
Ship ship;
Laser[] lasers = new Laser[10];
int laserIndex = 0;

void setup() {
  size(700, 700);

  blocks = new Block[width/100];
  ship = new Ship(mouseX, mouseY, 60);

  for (int i=0; i <lasers.length; i+=1) {
    lasers[i] = new Laser(width +10, -10, 24);
  }



  for (int i=0; i < blocks.length; i+=1) {
    blocks[i] = new Block((i)*100+random(20), random(50, 200), 50);
  }
  img = loadImage("thwomp.png");
  img2 = loadImage("ball.png");
  img3 = loadImage("ship.png");
}


void draw() {
  background(255);
  ship.move(mouseX, mouseY);

  
    ship.display();
  

  

  for (int i=0; i < blocks.length; i+=1) {
    blocks[i].display();
    blocks[i].collision(lasers);
    blocks[i].move();
  }
  for (int i = 0; i < lasers.length; i++) {
    lasers[i].display();
    lasers[i].shoot();
  }
}


void mousePressed() {
  // A new ball object
 
    lasers[laserIndex].x = mouseX;
    lasers[laserIndex].y = mouseY;
    laserIndex = (laserIndex + 1) %lasers.length;
  
}

