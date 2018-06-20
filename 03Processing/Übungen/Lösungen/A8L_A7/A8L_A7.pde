int x;
int y;
int size = 50;

void setup(){
  size(500, 500);
  x = width/2;
  y = height/2;
  
  noStroke();
}

void draw(){
  background(0);
  fill(255, 226, 3);
  triangle( x, y-size, x+size, y+size, x-size, y+size );
}

void keyPressed(){
  if(keyCode == DOWN){
    // langsam
    // y++;
    
    // oder schneller
    y += 10;
  }else if(keyCode == UP){
    // langsam
    // y--;
    
    // oder schneller
    y -= 10;
  }else if(keyCode == LEFT){
    // langsam
    //x--;
    
    // oder schneller
    x -= 10;
  }else if(keyCode == RIGHT){
    //langsam
    //x++;
    
    // oder schneller
    x += 10;
  }
}
