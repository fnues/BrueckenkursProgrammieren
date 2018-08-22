float rectSize = 40;
Pacman pac;

void settings() {
    size(400, 400);
}


void setup() {
    background(0);

    // erstelle pacman
    pac = new Pacman(width/2, height/2, rectSize);
}


void draw() {
    // zeichne hintergrund
    background(0);
        // zeichne pacman
        pac.paint();
}


void keyPressed() {
    if (keyCode == UP) {
            pac.moveUp();
    } else if (keyCode == DOWN) {
            pac.moveDown();
    } else if (keyCode == LEFT) {
            pac.moveLeft();
    } else if (keyCode == RIGHT) {
            pac.moveRight();
    }
}
