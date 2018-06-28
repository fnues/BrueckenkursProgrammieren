// Klasse
class Car {

  // Klassen Attribute
  color c;
  float carLength;
  float x;
  float y;


  // Klassen Funktionalität
  void setMembers(color c, float x, float y, float carLength){
    this.c = c;
    this.x = x;
    this.y = y;
    this.carLength = carLength;
  }
  
  void drawMe(){
   fill(c);
   rect(x, y, carLength, 40);
   fill(0);
   ellipse(x, y+40, 10, 10);
   ellipse(x+carLength, y+40, 10, 10);
  }
  
}
