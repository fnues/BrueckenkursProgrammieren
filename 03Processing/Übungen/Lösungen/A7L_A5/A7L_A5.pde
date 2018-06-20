int x = 0;
int y = 0;

void setup(){
  size(500, 500);
}

void draw(){
 background(255);
 rect(x,y,50,50);
 x += 5;
 y += 5;
}
