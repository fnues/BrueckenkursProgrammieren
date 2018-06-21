int posX;
int posY;
boolean isWalking = false;
int delta = 50;
int factor = 1;

void setup(){
  size(600, 600);
  posX = width/2;
  
}

void draw(){
  background(255);
  // kopf
  ellipse(posX, 200, 100, 100);
  // körper
  line(posX, 250, posX, 450);
  // arme
  line(posX, 300, posX-delta, 400);
  line(posX, 300, posX+delta, 400);
  // beine
  line(posX, 450, posX-delta, height);
  line(posX, 450, posX+delta, height);
}

void keyPressed(){
  if(keyCode == LEFT){
      moveLegs();
      posX--;
  }
  if(keyCode == RIGHT){
      moveLegs();
      posX++;
  }
}

void moveLegs(){
  if(delta >= 50){
    factor = -1;
  }
  if(delta <= -50){
    factor = 1;
  }
  delta += factor*10;
}
