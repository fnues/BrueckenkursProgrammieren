class Enemy{
    float x;
    float y;
    int deltaX;t
    int deltaY;
    float speed = 1;
    float enLength;
    float enWidth;
    PlayField obstaclesField;

    Enemy(float x, float y, float rectSize, PlayField field){
        this.x = x;
        this.y = y;
        this.obstaclesField = field;
        deltaX = 1;
        deltaY = 0;
        this.enLength = rectSize;
        this.enWidth = rectSize;
    }

    // Enemy AI
    void move(){
        // solange(while) ein Hindernis des Playfield berührt wird, soll die Richtung gewechselt werden -> changeDirection()
        // wenn nichts mehr berührt wird, soll x um deltaX*speed und y um deltaY*Speed erhöht werden:
  x += deltaX*speed;
  y += deltaY*speed;
    }


    void changeDirection(){
        // weise deltaX einen zufälligen Wert von -1, 0 oder 1 zu
        // falls deltaX == 0 ist, dann weise deltaY zufällig -1 oder 1 zu.
        // falls deltaX != 0 ist, soll deltaY = 0 sein.
    }


    void paint(){
        fill(200, 0, 255);
        ellipse(x,y, enWidth, enLength);
    }


    boolean collides(float x, float y){
        // prüfe ob der Enemy berührt wird
    }
}
