float rectSize = 40;
Pacman pac;
PlayField field;
int score = 0;
ArrayList<Enemy> enemies;
int count = 0;
String text = "";

boolean isGameOver = false;
boolean pacmanStarted = false;

void settings() {
  // erstelle spielfeld
  field = new PlayField(rectSize);

  size(field.getWidth(), field.getHeight());
}


void setup() { 
  background(0); 

  // erstelle pacman
  pac = new Pacman(2*rectSize+rectSize/2, 2*rectSize+rectSize/2, rectSize);

  // erstelle list für enemies
  enemies = new ArrayList();
  
}


void draw() {
  // zeichne hintergrund
  background(0);

  if (!isGameOver) {
    // zeichne pacman
    pac.paint();

    // zeichne spielfeld
    field.paint();

    // zeichne score
    fill(255);
    text("DEIN SCORE IST: "+score+ " "+text, 50, 20);

    if (pacmanStarted) {
      if (count == 200 && enemies.size() < 4) {
        enemies.add(new Enemy(2*rectSize+rectSize/2, 2*rectSize+rectSize/2, rectSize, field));
        count = 0;
      }
      // bewege und zeichne gegener
      for (Enemy enemy : enemies) {
        enemy.move();
        enemy.paint();
      }
      count++;

      if (pacCollidesWithEnemy()) {
        score = 0;
        isGameOver = true;
      }
    }
  } else {
    fill(255);
    rectMode(CENTER);
    text("GAME OVER", width/2-40, height/2);
  }
}


void keyPressed() {
  if (keyCode == UP) {
    if (!field.isObstacleTouched(pac.getX(), pac.getY()-pac.getSize()/2)) {
      pac.moveUp();
      pacmanStarted = true;
    }
  } else if (keyCode == DOWN) {
    if (!field.isObstacleTouched(pac.getX(), pac.getY()+pac.getSize()/2)) {
      pac.moveDown();
      pacmanStarted = true;
    }
  } else if (keyCode == LEFT) {
    if (!field.isObstacleTouched(pac.getX()-pac.getSize()/2, pac.getY())) {
      pac.moveLeft();
      pacmanStarted = true;
    }
  } else if (keyCode == RIGHT) {
    if (!field.isObstacleTouched(pac.getX()+pac.getSize()/2, pac.getY())) {
      pac.moveRight();
      pacmanStarted = true;
    }
  }


  if ( field.isOneNuggetEaten(pac.getX()-pac.getSize()/2, pac.getY()) || 
      field.isOneNuggetEaten(pac.getX()+pac.getSize()/2, pac.getY()) ||
      field.isOneNuggetEaten(pac.getX(), pac.getY()-pac.getSize()/2) ||
      field.isOneNuggetEaten(pac.getX(), pac.getY()+pac.getSize()/2) ) {
    score++;
  }
}


boolean pacCollidesWithEnemy() {
  for (Enemy enemy : enemies) {
    // if one side of pacman collides with enemy
    if ( enemy.collides(pac.getX()-pac.getSize()/2, pac.getY()) ||
      enemy.collides(pac.getX()+pac.getSize()/2, pac.getY()) ||
      enemy.collides(pac.getX(), pac.getY()-pac.getSize()/2) ||
      enemy.collides(pac.getX(), pac.getY()+pac.getSize()/2)) return true;
  }
  return false;
}
