class Nugget {
  float x;
  float y;
  float size = 5;
  boolean isVisible = true;


  Nugget(float x, float y) {
    this.x = x;
    this.y = y;
  }


  void paint() {
    if (isVisible) {
      noStroke();
      fill(0, 0, 255);
      ellipse(x, y, size, size);
    }
  }


  boolean getsEaten(float x, float y) {
    return ( isVisible && x >= this.x-rectSize/2 && x <= this.x+rectSize/2 && y >= this.y-rectSize/2 && y <= this.y+rectSize/2 );
  }

  void setVisible(boolean visible) {
    isVisible = visible;
  }
}
