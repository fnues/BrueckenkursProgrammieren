color rectColor = color(0, 0, 0);
color rectOne = color(241, 105, 92);
color rectTwo = color(80, 227, 194);
color rectThree = color(74, 144, 226);

int xSmall;
int yOne;
int yTwo;
int yThree;
int smallSize = 100;

int xBig;
int yBig;
int bigSize = 200;


void setup() {
  size(500, 500);
  noStroke();

  xSmall = 3*width/4;
  yOne = height/4;
  yTwo = height/2;
  yThree = 3*height/4;
  
  xBig = width/2-bigSize/2;
  yBig = height/2-bigSize/2;

  rect(xBig, yBig, bigSize, bigSize);
  fill(rectOne);
  rect(xSmall, yOne, smallSize, smallSize);
  fill(rectTwo);
  rect(xSmall, yTwo, smallSize, smallSize);
  fill(rectThree);
  rect(xSmall, yThree, smallSize, smallSize);
}


void draw() {
}


void mousePressed() {

  if (mouseX >= xSmall 
      & mouseX <= xSmall+smallSize) {

    if (mouseY >= yOne  
        & mouseY <= yOne+smallSize) {
      fill(rectOne);
      rect(xBig, yBig, bigSize, bigSize);
      
    } else if (mouseY >= yTwo 
               & mouseY <= yTwo+smallSize) {
      fill(rectTwo);
      rect(xBig, yBig, bigSize, bigSize);
      
    } else if (mouseY >= yThree 
               & mouseY <= yThree+smallSize) {
      fill(rectThree);
      rect(xBig, yBig, bigSize, bigSize);
      
    }
    
  }

}
