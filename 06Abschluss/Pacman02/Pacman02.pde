float rectSize = 40;
Pacman pac;
PlayField field;

ArrayList<Enemy> enemies = new ArrayList();
int count = 0;


void settings() {
  field = new PlayField(rectSize);
  size(field.getWidth(), field.getHeight());
}


void setup() {
  background(0);

  // erstelle pacman
  pac = new Pacman(2*rectSize+rectSize/2, 2*rectSize+rectSize/2, rectSize);
}


void draw() {
  // zeichne hintergrund
  background(0);
  // zeichne pacman
  pac.paint();
  field.paint();
  for(int i = 0; i < enemies.size(); i++){
    Enemy oneEnemy = enemies.get(i);
    oneEnemy.move();
    oneEnemy.paint();
  }

  if (count == 200 && enemies.size() < 5) {
    Enemy en = new Enemy(2*rectSize+rectSize/2, 2*rectSize+rectSize/2, rectSize, field);
    enemies.add(en);
    count = 0;
  }

  count++;
}


void keyPressed() {
  if (keyCode == UP) {
    if ( !field.isObstacleTouched( pac.getX(), pac.getY() - pac.getSize()/2 - pac.getSpeed() )) {
      pac.moveUp();
    }
  } else if (keyCode == DOWN) {
    if ( !field.isObstacleTouched( pac.getX(), pac.getY() + pac.getSize()/2 + pac.getSpeed() )) {
      pac.moveDown();
    }
  } else if (keyCode == LEFT) {
    if ( !field.isObstacleTouched( pac.getX() - pac.getSize()/2 - pac.getSpeed(), pac.getY())) {
      pac.moveLeft();
    }
  } else if (keyCode == RIGHT) {
    if ( !field.isObstacleTouched( pac.getX() + pac.getSize()/2 + pac.getSpeed(), pac.getY() )) {
      pac.moveRight();
    }
  }
}
