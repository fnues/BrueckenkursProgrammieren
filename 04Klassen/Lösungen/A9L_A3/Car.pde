// Klasse
class Car {

  // Klassen Attribute
  color c;
  float carLength;    // length ist ein von processing reserviertes wort und kann nicht als variablen Name benutzt werden
  float x;
  float y;
  float speed;


  // Klassen Funktionalität
  void setMembers(color c, float x, float y, float carLength, float speed){
    this.c = c;
    this.x = x;
    this.y = y;
    this.carLength = carLength;
    this.speed = speed;
  }
  
  void drawMe(){
   fill(c);
   rect(x, y, carLength, 40);
   fill(0);
   ellipse(x, y+40, 10, 10);
   ellipse(x+carLength, y+40, 10, 10);
  }
  
  void move(){
    x += speed;
  }
  
}
