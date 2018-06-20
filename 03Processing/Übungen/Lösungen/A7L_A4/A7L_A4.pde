
void setup(){
  size(400, 400);
  background(255);
}

void draw(){
  fill(random(255), random(255), random(255));
  float diam = random(20);
  ellipse(random(width), random(height), diam, diam);
}
