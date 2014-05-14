class Laser {
  float x;
  float y;
  float size;


  Laser(float tempX, float tempY, float tempSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
  }

  void display() {
    pushStyle();
    fill(100);
    stroke(0);
    imageMode(CENTER);
    image(img2, x, y, size, size);
    popStyle();
  }

  void shoot() {
    y = y - 10;
  }
}

