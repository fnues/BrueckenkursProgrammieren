int x = 0;
int y = 500;

int r = 0;
int b = 255;
int g = 255;

void setup(){
  size(500, 500);
  noStroke();
}

void draw(){
 background(255);
 
 // zusatz 1
 fill(r, g, b);
 
 ellipse(x,y,50,50);
 
 x += 2;
 y -= 2;
 
 r++;
 g--;
 b--;
}
