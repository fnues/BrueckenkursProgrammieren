ArrayList<Ball> list;

void setup() {
  size(800, 800);
  background(255);
  list = new ArrayList();
  noStroke();
}


void draw() {
  background(255);

  list.add(new Ball(mouseX, mouseY, 100));

  for (int i = list.size()-1; i >= 0; i--) {
    if (list.get(i).finished()) {
      list.remove(i);
    } else {
      list.get(i).display();
    }
  }
}
