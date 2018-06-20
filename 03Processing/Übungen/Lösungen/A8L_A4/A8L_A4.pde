int x = 150;
int y = 300;
int size = 100;

void setup(){
  size(500, 500);
  background(255);
  fill(50);
  rect(x, y, size, size);
}

void draw(){
}


void mousePressed(){
  if(mouseX >= x & mouseX <= x+size & mouseY >= y & mouseY <= y+size){
     fill(random(255), random(255), random(255));
     rect(x, y, size, size);
  }
}
