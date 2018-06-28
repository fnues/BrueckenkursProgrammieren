void setup(){
 Spot spot0 = new Spot();
 spot0.drawMe();
 
 Spot spot1 = new Spot(createRandomColor(), random(width/2, width), random(height/2));
 spot1.drawMe();
 
 Spot spot2 = new Spot(createRandomColor(), random(width/2), random(height/2, height));
 spot2.drawMe();
 
 Spot spot3 = new Spot(createRandomColor(), random(width/2, width), random(height/2, height));
 spot3.drawMe();
}

color createRandomColor() {
  return color(random(255), random(255), random(255));
}
