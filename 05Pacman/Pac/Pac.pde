
Pacman pac;


void setup(){
  size(1000, 1000);
  background(0);
  
  // initialisiere pacman koordinaten
  pac = new Pacman(width/2, height/2);
  
}


void draw(){
  background(0);
  
  // zeichne pacman
  pac.paint();
}



void keyPressed(){
 if(keyCode == UP){
      pac.moveUp();
 }else if(keyCode == DOWN){
      pac.moveDown();
 }else if(keyCode == LEFT){
      pac.moveLeft();
 }else if(keyCode == RIGHT){
      pac.moveRight();
 }
 
}
