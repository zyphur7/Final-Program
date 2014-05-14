class Ship {
  float x;
  float y;
  float size;
  boolean alive = true;

  Ship (float tempX, float tempY, float tempSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
  }

  void display() {
    // rect(x, y, size, size);
    pushStyle();
    imageMode(CENTER);
    image(img3, x, y, size, size);
    popStyle();
  }

 
  void move(float moveToX, float moveToY) {
    x = moveToX;
    y = moveToY;
  }
}

