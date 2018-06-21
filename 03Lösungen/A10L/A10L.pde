int nrOfTriangles = 5;
int[] x = new int[nrOfTriangles];
int[] y = new int[nrOfTriangles];
int size = 20;
int moveX = 1;
int moveY = 1;

void setup(){
  size(600, 600);
  background(50);
  
  // eine möglichkeit die startwerte zu initialisieren, könnten aber auch oben
  // bei der variablen deklaration per hand initialisiert werden.
  for(int i = 0; i < nrOfTriangles; i++){
    x[i] = (int)random(600);
    y[i] = (int)random(600);
  }
  
}


void draw(){
  background(50);
  
  // zeichne alle Dreicke
  for(int i = 0; i < nrOfTriangles; i++){
    triangle(x[i], y[i]+size, x[i]-size, y[i], x[i]+size, y[i]-size);
  }
  
  // bewege alle Dreiecke
  for(int i = 0; i < nrOfTriangles; i++){
    x[i] += moveX;
    y[i] += moveY;
  }
}


void mousePressed(){  
  // damit die Dreiecke nicht stehen bleiben
  // generieren wir solange eine zufällige zahl,
  // bis sie nicht = 0 ist.
  do{
      moveX = (int)random(-2, 2);
  }while( moveX == 0 );
  
  do{
      moveY = (int)random(-2, 2);
  }while( moveY == 0 );

}
