void setup() {
  size(600, 600);
  background(255);

  Car car1 = new Car();
  car1.setMembers(getRandomColor(), random(width/2), random(height/2), random(100));

  Car car2 = new Car();
  car2.setMembers(getRandomColor(), random(width/2, width), random(height/2), random(100));

  Car car3 = new Car();
  car3.setMembers(getRandomColor(), random(width/2), random(height/2, height), random(100));

  Car car4 = new Car();
  car4.setMembers(getRandomColor(), random(width/2, width-50), random(height/2, height-50), random(100));
  
  car1.drawMe();
  car2.drawMe();
  car3.drawMe();
  car4.drawMe();
}

color getRandomColor() {
  return color(random(255), random(255), random(255));
}
