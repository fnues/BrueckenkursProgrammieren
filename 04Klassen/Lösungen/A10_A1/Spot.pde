class Spot{
  color clr;
  float x;
  float y;
  
  Spot(){
    this.clr = color(0);
    this.x = 0;
    this.y = 0;
  }
  
  Spot(color clr, float x, float y){
    this.clr = clr;
    this.x = x;
    this.y = y;
  }
  
  void drawMe(){
     fill(clr);
     ellipse(x, y, 40, 40);
  }
}
