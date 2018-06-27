color rectColor = color(50, 50, 50);
color rectStroke = color(80, 80, 80);
color rectOne = color(241, 105, 92);
color rectTwo = color(80, 227, 194);
color rectThree = color(74, 144, 226);

int xSmallStroke;
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

  xSmallStroke = width/4-100;
  xSmall = 3*width/4;
  yOne = height/4;
  yTwo = height/2;
  yThree = 3*height/4;
  
  xBig = width/2-bigSize/2;
  yBig = height/2-bigSize/2;
  
  background(255);
  strokeWeight(2);

  fill(rectColor);
  rect(xBig, yBig, bigSize, bigSize);
  
  noStroke();
  fill(rectOne);
  rect(xSmall, yOne, smallSize, smallSize);
  fill(rectTwo);
  rect(xSmall, yTwo, smallSize, smallSize);
  fill(rectThree);
  rect(xSmall, yThree, smallSize, smallSize);
  
  noFill();
  stroke(rectOne);
  rect(xSmallStroke, yOne, smallSize, smallSize);
  stroke(rectTwo);
  rect(xSmallStroke, yTwo, smallSize, smallSize);
  stroke(rectThree);
  rect(xSmallStroke, yThree, smallSize, smallSize);
}


void draw() {
}


void mousePressed() {

  if (mouseX >= xSmall 
      & mouseX <= xSmall+smallSize) {

    if (mouseY >= yOne  
        & mouseY <= yOne+smallSize) {
       rectColor = rectOne;
      
    } else if (mouseY >= yTwo 
               & mouseY <= yTwo+smallSize) {
      rectColor = rectTwo;
      
    } else if (mouseY >= yThree 
               & mouseY <= yThree+smallSize) {
      rectColor = rectThree;
      
    }
    
  }
  
  
  if (mouseX >= xSmallStroke 
      & mouseX <= xSmallStroke+smallSize) {

    if (mouseY >= yOne  
        & mouseY <= yOne+smallSize) {
      rectStroke = rectOne;
      
    } else if (mouseY >= yTwo 
               & mouseY <= yTwo+smallSize) {
      rectStroke = rectTwo;
      
    } else if (mouseY >= yThree 
               & mouseY <= yThree+smallSize) {
      rectStroke = rectThree;
      
    }
    
  }
  
  fill(rectColor);
  stroke(rectStroke);
  rect(xBig, yBig, bigSize, bigSize);

}
