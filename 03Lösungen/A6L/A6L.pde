int diam = 60;
int x = 0;
int y = 0;
int stepX = 1;
int stepY = -2;


void setup(){
  size(500,500);
  y = height;
}


void draw(){
  background(255);
  ellipse(x, y, diam, diam);
    
    x += stepX;
    y += stepY;
    
  if( x < 0 ){
    stepX = (int)random(3);
  }
  if( x > width ){
    stepX = -1*(int)random(3); 
  }
  
  if( y < 0 ){
    stepY = (int)random(3);
  }
  if( y > height ){
    stepY = -1*(int)random(3); 
  }
}
