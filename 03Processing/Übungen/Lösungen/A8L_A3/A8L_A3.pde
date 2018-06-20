int diam = 50;

void setup(){
  size(500, 500);
  noStroke();
  // version 1
  // background(255);
}


void draw(){
  // version 2
  background(255);
  
  fill(32, 218, 232, 60);
  ellipse(mouseX-30, mouseY+30, diam, diam);
  fill(60, 200, 160, 60);
  ellipse(mouseX+50, mouseY-10, diam, diam);
  fill(30, 220, 100, 60);
  ellipse(mouseX+10, mouseY-50, diam, diam);
}
