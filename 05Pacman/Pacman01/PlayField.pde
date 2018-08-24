class PlayField {
  Obstacle[] obstacles;
  float rectSize;
  int nrOfElementsWidht = 9;
  int nrOfElementsHeight = 7;
  float startFieldX;
  float startFieldY;

  PlayField(float rectSize) {
    this.rectSize = rectSize;
    this.startFieldX = rectSize;
    this.startFieldY = rectSize;
    initObstacles();
  }

  void initObstacles() {
    obstacles = new Obstacle[9];
    float startX = 2*rectSize+startFieldX;
    float startY = 2*rectSize+startFieldY;

    obstacles[0] = new Obstacle(startX, startY, false, 4, rectSize);
    obstacles[1] = new Obstacle(startX+2*rectSize, startY+rectSize, true, 2, rectSize);
    obstacles[2] = new Obstacle(startX+4*rectSize, startY+2*rectSize, false, 1, rectSize);
    obstacles[3] = new Obstacle(startX, startY+2*rectSize, true, 3, rectSize);
    obstacles[4] = new Obstacle(startX+2*rectSize, startY+4*rectSize, false, 4, rectSize);

    // playfield boundary obstacles 
    obstacles[5] = new Obstacle(startFieldX, startFieldY, false, nrOfElementsWidht, rectSize);
    obstacles[6] = new Obstacle(startFieldX, startFieldY+rectSize, true, 6, rectSize);
    obstacles[7] = new Obstacle(startFieldX+8*rectSize, startFieldY+rectSize, true, 6, rectSize);
    obstacles[8] = new Obstacle(startFieldX, startFieldY+6*rectSize, false, nrOfElementsWidht, rectSize);
  }

  void paint() {
    for (int i = 0; i < obstacles.length; i++) {
      obstacles[i].paint();
    }
  }

  boolean isObstacleTouched(float x, float y) {
    for (int i = 0; i < obstacles.length; i++) {
      if (obstacles[i].isTouched(x, y)) return true;
    }
    return false;
  }


  int getWidth() {
    return (int)(nrOfElementsWidht*rectSize+2*rectSize);
  }

  int getHeight() {
    return (int)(nrOfElementsHeight*rectSize+2*rectSize);
  }
}
