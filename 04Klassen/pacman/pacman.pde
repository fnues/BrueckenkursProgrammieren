PImage img;
float circleX = 100;
float circleY = 100;
float diam = 100;
float delta = 5;

// Pacman pacman

void setup() {
  size(1164, 901);
  img = loadImage("PACMAN.jpg");
}


void draw() {
  image(img, 0, 0);
  fill(255, 255, 0);
  ellipse(circleX, circleY, diam, diam);
}


void keyPressed() {
  if (keyCode == UP) {
      circleY = circleY - delta;
      // pacman.moveUp();
  }
  if ( keyCode == DOWN ) {
    circleY = circleY + delta;
  }
  if ( keyCode == RIGHT ) {
    circleX = circleX + delta;
  }
  if ( keyCode == LEFT ) {
    circleX = circleX - delta;
  }
}
