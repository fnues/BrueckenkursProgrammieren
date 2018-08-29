void setup() {
  size(640, 360);
  background(51);
  noStroke();
  noLoop();
}

void draw() {
  drawTarget(width*0.25, height*0.4, 80, 4);
  drawTarget(width*0.5, height*0.5, 100, 10);
  drawTarget(width*0.75, height*0.3, 120, 6);
}


void drawTarget(float xloc, float yloc, int size, int num) {
  float grayvalues = 255/num;
  float steps = 2*PI/num;
  for (int i = 0; i < num; i++) {
    fill(i*grayvalues, 0, 0);
    triangle(xloc, yloc, xloc+size*sin(i*steps), yloc-size*cos(i*steps), xloc+size*sin((i+1)*steps), yloc-size*cos((i+1)*steps));
}
}
