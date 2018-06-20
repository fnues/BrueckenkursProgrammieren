int x;
int y;
int size = 40;
int rectSize = 100;

int nrOfRects = 5;
float[] rectXs = new float[nrOfRects];
float[] rectYs = new float[nrOfRects];


void setup(){
  size(800, 800);
  init();
}


void draw(){
  if( x >= width ){
    init();
  }
  
  background(255);
  ellipse(x, y, size, size);

  for( int i = 0; i < nrOfRects; i++ ){
    rect(rectXs[i], rectYs[i], rectSize, rectSize);
  }

  x++;
}


void init(){
  x = 0;
  y = height/2;
  generateRectCoordinates();
}


void generateRectCoordinates(){
  for( int i = 0; i < nrOfRects; i++ ){
     rectXs[i] = random(100, 700);
     rectYs[i] = random(300, 500);
  }
}


void keyPressed(){
 if(keyCode == DOWN){
   y += 5;
 }else if(keyCode == UP){
   y -= 5;
 }
}
