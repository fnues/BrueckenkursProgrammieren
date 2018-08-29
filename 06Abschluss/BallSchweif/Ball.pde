class Ball {
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  float life = 100;
  
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    gravity = 0.1;
  }
  
  boolean finished() {
    // Balls fade out
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }
  
  
  void display() {
    // Display the circle
    fill(0,life);
    //stroke(0,life);
    ellipse(x, y, life*w/100, life*w/100);
  }
} 
