Car car1;
Car car3;

void setup() {
  size(600, 600);

  car1 = new Car();
  car1.setMembers(getRandomColor(), 0, random(height/2), random(100), 2);
  car3 = new Car();
  car3.setMembers(getRandomColor(), 0, random(height/2, height), random(100), 3);
  
}

void draw(){
  background(255);
  car1.move();
  car3.move();
  car1.drawMe();
  car3.drawMe();
}

color getRandomColor() {
  return color(random(255), random(255), random(255));
}
