float rectSize = 40;
Pacman pac;
PlayField field;

void settings() {
  size(400, 400);
}


void setup() {
  background(0);

  // erstelle pacman
  pac = new Pacman(width/2, height/2, rectSize);
  field = new PlayField(rectSize);
}


void draw() {
  // zeichne hintergrund
  background(0);
  // zeichne pacman
  pac.paint();
  field.paint();
}


void keyPressed() {
  if (keyCode == UP) {
    if( !field.isObstacleTouched( pac.getX(), pac.getY() - pac.getSize()/2 )){
      pac.moveUp();
    }
  } else if (keyCode == DOWN) {
    if( !field.isObstacleTouched( pac.getX(), pac.getY() - pac.getSize()/2 )){
      pac.moveDown();
    }
  } else if (keyCode == LEFT) {
    if( !field.isObstacleTouched( pac.getX() - pac.getSize()/2, pac.getY())){
      pac.moveLeft();
    }
  } else if (keyCode == RIGHT) {
    if( !field.isObstacleTouched( pac.getX() + pac.getSize()/2, pac.getY() )){
      pac.moveRight();
    }
  }
}
