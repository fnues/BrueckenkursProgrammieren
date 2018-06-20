// eine möglichkeit die kreiskoordinaten zu speichern
int size = 20;
int[] x = new int[size];
int[] y = new int[size];
// andere möglichkeit die kreiskoordinaten zu speichern (für fortgeschrittene)
/*
int[][] coordinates = new int[20][2];
*/

int diam = 50;
int circleCount = 0;


void setup() {
  // eine möglichkeit
  for (int i = 0; i < size; i++) {
    x[i] = -1;
    y[i] = -1;
  }

  // andere möglichkeit
  /*
  for (int i = 0; i < coordinates.length; i++) {
    coordinates[i][0] = -1;
    coordinates[i][1] = -1;
  }
  */

  size(500, 500);
  noStroke();
  fill(32, 218, 232, 60);
}



void draw() {
  background(255);

  ellipse(mouseX, mouseY, diam, diam);

  // eine möglichkeit
  for ( int i = 0; i < size; i++ ) {
    if (x[i] != -1 & y[i] != -1) {
      ellipse(x[i], y[i], diam, diam);
    }
  }

  // andere möglichkeit
  /*
  for (int i = 0; i < coordinates.length; i++) {
    if (coordinates[i][0] != -1 & coordinates[i][1] != -1) {
      ellipse(coordinates[i][0], coordinates[i][1], diam, diam);
    }
  }
  */
}


void mousePressed(){
  
  if(circleCount == size){
    circleCount = 0;
  }
  
  // eine möglichkeit
  x[circleCount] = mouseX;
  y[circleCount] = mouseY;
  
  // andere möglichkeit
  /*
  coordinates[circleCount][0] = mouseX;
  coordinates[circleCount][1] = mouseY;
  */
  
  
  circleCount++;
}
