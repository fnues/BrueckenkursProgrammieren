class Enemy{
  float x;
  float y;
  int deltaX;
  int deltaY;
  float speed = 1;
  float enLength = 30;
  float enWidth = 25;
  PlayField obstaclesField;
  
  Enemy(float x, float y, float rectSize, PlayField field){
    this.x = x;
    this.y = y;
    this.obstaclesField = field;
    deltaX = 1;
    deltaY = 0;
    this.enLength = rectSize;
    this.enWidth = rectSize;
  }
  
  // Enemy AI
  void move(){
    // solange ein Hindernis des Playfield berührt wird, soll die Richtung gewechselt werden
    while(field.isObstacleTouched(x + deltaX*enWidth/2, y + deltaY*enLength/2)){
      changeDirection();
    }
    // wenn nichts mehr berührt wird, soll x um deltaX*speed und y um deltaY*Speed erhöht werden.
    x += deltaX*speed;
    y += deltaY*speed;
  }
  
  
  void changeDirection(){
    // weise deltaX einen zufälligen Wert von -1, 0 oder 1 zu
    deltaX = (int)random(0,3)-1;
    // falls deltaX == 0 ist, dann weise deltaY zufällig -1 oder 1 zu.
    if(deltaX == 0){
     int rand = (int)random(0,2);
     if(rand == 0) deltaY = -1;
     else deltaY = 1;
     // falls deltaX != 0 ist, soll deltaY = 0 sein.
    }else{
     deltaY = 0; 
    }

  }
  
  
  void paint(){
    fill(200, 0, 255);
    ellipse(x,y, enWidth, enLength);
  }
  
  
  boolean collides(float x, float y){
    // prüfe ob der Enemy berührt wird
    return (x > this.x && x < this.x+enWidth && y > this.y && y < this.y+enLength);
  }
}
