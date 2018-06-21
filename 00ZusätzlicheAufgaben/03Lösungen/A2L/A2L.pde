
void setup(){
  size(500,500);
}

void draw(){
  background(255);
  line(mouseX, mouseY, 0, 0);
  line(mouseX, mouseY, width/2, 0);
  line(mouseX, mouseY, width, 0);
  line(mouseX, mouseY, width, height/2);
  line(mouseX, mouseY, width, height);
  line(mouseX, mouseY, width/2, height);
  line(mouseX, mouseY, 0, height);
  line(mouseX, mouseY, 0, height/2);
}
