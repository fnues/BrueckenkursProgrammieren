int[] x= new int[20];
boolean[] isRed = new boolean[20];

void setup() {
  size(400, 400);
  // init heights and color
  for (int i=0; i<20; i++) {
    x[i]= 1+(int)random(200);
    isRed[i] = false;
  }
}

void draw() {
  background(255, 255, 255);
  drawRectangles();
}


void drawRectangles() {
  for (int i=0; i<x.length; i++) {
    if (isRed[i]) {
      fill(255, 0, 0);
    } else {
      fill(255, 255, 255);
    }
    rect(i*20, height-x[i], 20, x[i]);
  }
}



void mousePressed() {
  x[mouseX/20]= height-mouseY;
  isRed[mouseX/20] = true;
}
