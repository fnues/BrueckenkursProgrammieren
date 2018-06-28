void setup(){
  size(500, 500);
  background(255);
  
  color colr1 = color(random(255), random(255), random(255));
  Spot spot1 = new Spot();
  spot1.setMembers(colr1, random(width), random(height));
  
  color colr2 = color(random(255), random(255), random(255));
  Spot spot2 = new Spot();
  spot2.setMembers(colr2, random(width), random(height));
  
  color colr3 = color(random(255), random(255), random(255));
  Spot spot3 = new Spot();
  spot3.setMembers(colr3, random(width), random(height));
  
  color colr4 = color(random(255), random(255), random(255));
  Spot spot4 = new Spot();
  spot4.setMembers(colr4, random(width), random(height));
  
  spot1.drawMe();
  spot2.drawMe();
  spot3.drawMe();
  spot4.drawMe();
}
