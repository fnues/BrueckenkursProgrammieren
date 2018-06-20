// eine möglichkeit
int nrOfRects= 10;
float[] x = new float[nrOfRects];
float[] y = new float[nrOfRects];
/* eine möglichkeit wäre auch die arrays gleich hier zu initialisieren
 int[] x = {150, 50, 400, 350, 200, 10, 450, 333, 222, 111};
 int[] y = {150, 50, 400, 350, 200, 10, 450, 333, 222, 111}; 
 */

// andere möglichkeit
float[][] rects = new float[10][2];

boolean isOnePossibility = true;

int size = 100;

void setup() {
  // eine möglichkeit
  if (isOnePossibility) {
    for ( int i = 0; i < nrOfRects; i++ ) {
      x[i] = random(0, width-size);
      y[i] = random(0, height-size);
    }
  }
  // andere
  else {
    for ( int i = 0; i < rects.length; i++ ) {
      for (int j = 0; j < rects[0].length; j++) {
        rects[i][j] = random(0, 400);
      }
    }
  }

  size(500, 500);
  background(255);
  fill(50);

  // eine möglichkeit
  if (isOnePossibility) {
    for ( int i = 0; i < nrOfRects; i++ ) {
      rect(x[i], y[i], size, size);
    }
  }
  // andere
  else {
    for ( int i = 0; i < rects.length; i++ ) {
      rect(rects[i][0], rects[i][1], size, size);
    }
  }
}

void draw() {
}


void mousePressed() {
  // eine möglichkeit
  if (isOnePossibility) {
    for ( int i = 0; i < nrOfRects; i++ ) {
      if (mouseX >= x[i] & mouseX <= x[i]+size & mouseY >= y[i] & mouseY <= y[i]+size) {
        fill(random(255), random(255), random(255));
        rect(x[i], y[i], size, size);
      }
    }
  }
  // andere
  else {
    for (int i = 0; i < rects.length; i++) {
      if (mouseX >= rects[i][0] & mouseX <= rects[i][0]+size & mouseY >= rects[i][1] & mouseY <= rects[i][1]+size) {
        fill(random(255), random(255), random(255));
        rect(rects[i][0], rects[i][1], size, size);
      }
    }
  }
}
