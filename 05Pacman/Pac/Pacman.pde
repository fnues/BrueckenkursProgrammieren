class Pacman{
  // Klassenattribute für Position, Grösse, Farbe und Bewegungsgeschwindigkeit
  color yellow = color(255, 255, 0);
  int speed = 5;
  float diam = 40;
  float x;
  float y;
  
  //Konstruktor
  Pacman(float x, float y){
    this.x = x;
    this.y = y;
  }

  
  void paint(){
    noStroke();
    fill(yellow);
    ellipse(x, y, diam, diam);
  }
  
  
  void moveLeft(){
    x = x - speed;
  }
  
  void moveRight(){
    x = x + speed;
  }
  
  void moveUp(){
    y = y - speed;
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
