class Pacman{
  color yellow = color(255, 255, 0);
  int speed = 8;
  float diam;
  float x;
  float y;
  
  //Konstruktor
  Pacman(float x, float y, float size){
    this.x = x;
    this.y = y;
    this.diam = size;
  }

  
  void paint(){
    noStroke();
    fill(yellow);
    ellipse(x, y, diam, diam);
  }
  
  void moveLeft(){
    x = x + -1*speed;
  }
  
  void moveRight(){
    x = x + speed;
  }
  
  void moveUp(){
    y = y + -1*speed;
  }
  
  void moveDown(){
    y = y + speed;
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
   return y; 
  }
  
  float getSize(){
   return diam; 
  }
}
