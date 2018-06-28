// Klasse
class Car {

  // Klassen Attribute
  color c;
  float carLength;
  float x;
  float y;
  float speed;

  // Klassen Konstruktoren
    Car(float x, float y){
    this.c = color(255, 100, 0);
    this.x = x;
    this.y = y;
    this.carLength = 100;
    this.speed = 2;
  }
  
    Car(color c, float x, float y, float carLength){
    this.c = c;
    this.x = x;
    this.y = y;
    this.carLength = carLength;
    this.speed = 2;
  }
  
  Car(color c, float x, float y, float carLength, float speed){
    this.c = c;
    this.x = x;
    this.y = y;
    this.carLength = carLength;
    this.speed = speed;
  }
  
  
  // Klassen Funktionalität
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
