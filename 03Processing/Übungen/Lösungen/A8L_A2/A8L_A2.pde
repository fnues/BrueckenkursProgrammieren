void setup(){
  size(400, 400);
  background(0);
  fill(0);
  rect(0,0, width, height);
}

void draw(){
}


void mousePressed(){
  fill(random(255), random(255), random(255));
  rect(0,0,width,height);
}
