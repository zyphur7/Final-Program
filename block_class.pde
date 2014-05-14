class Block {
  float x, y, size; 
  boolean hit;
  float speed = 1;

  Block (float tempX, float tempY, float tempSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
    hit = false;
  }

  void display() {
    //Display the block
    if (hit == false) {
      pushStyle();
      fill(100);
      stroke(0);
      image(img, x, y, size, size);
      popStyle();
    }
  }

  void collision(Laser[] bullets) {
    for (int i = 0; i < bullets.length; i +=1) {

      if (bullets[i].x  > x && bullets[i].x < x + size &&
        bullets[i].y < y + size) {
        hit = true;
      }
    }
  }
  
  void move() {
    y +=speed;
  }
}

