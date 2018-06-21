int diam = 80;

void setup() {
  size(500, 500);
  background(255);
  noStroke();
}


void draw() {
}


void keyPressed() {
  int circles = asciiToInt(key);

  if ( circles > -1 ) {
    background(255);

    for (int i = 0; i < circles; i++) {
      fill(random(255), random(255), random(255));
      ellipse(random(width), random(height), diam, diam);
    }
  }
}


int asciiToInt(int ascii) {
  if (ascii < 48 | ascii > 57 ) {
    return -1;
  }
  return ascii - 48;
}
