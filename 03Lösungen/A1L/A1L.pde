color rectColor = color(0, 0, 0);
int rectSize = 100;

void setup(){
  rectMode(CENTER);
  size(500,500);
  rect(width/2, height/2, rectSize, rectSize);
}

void draw(){
}


void keyPressed(){
  
 if(key == 'r'){
    rectColor = color(255, 0 ,0); 
 }else if(key == 'g'){
   rectColor = color(0, 255 ,0);
 }else if(key == 'b'){
   rectColor = color(0, 0, 255);
 }
 
 fill(rectColor);
 rect(width/2, height/2, rectSize, rectSize);
}
