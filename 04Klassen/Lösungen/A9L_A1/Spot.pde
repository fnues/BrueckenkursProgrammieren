class Spot{
  color clr;
  float x;
  float y;
  
  void setMembers(color clr, float x, float y){
    this.clr = clr;
    this.x = x;
    this.y = y;
  }
  
  void drawMe(){
     fill(clr);
     ellipse(x, y, 40, 40);
  }
}
