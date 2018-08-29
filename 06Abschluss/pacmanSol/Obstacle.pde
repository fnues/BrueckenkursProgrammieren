class Obstacle{
  // Klassenattribute für Position, Länge und Breite. 
  // Und zum definieren ob das Rechteck liegend oder stehend gezeichnet wird.
  boolean isVertical;
  float x;
  float y;
  float theHeight;    // length ist ein von processing reserviertes wort und kann nicht als variablen Name benutzt werden
  float theWidth;     // das gleiche gilt für width
  
  // Konstruktor
  Obstacle(float x, float y, boolean isVertical, float obLength, float obWidth){
    this.x = x;
    this.y = y;
    this.isVertical = isVertical;
    if(isVertical){
      this.theWidth = obWidth;
      this.theHeight = obLength*obWidth;
    }else{
      this.theHeight = obWidth;
      this.theWidth = obLength*obWidth;
    }
  }
  
  // Methode zum zeichnen des Rechtecks
  void paint(){
    noStroke();
    fill(color(255, 0, 0));
    rect(x, y, theWidth, theHeight);
  }
  
  // Methode die true zurück gibt, wenn die x UND y Parameter das Rechteck berühren.
  boolean isTouched(float x, float y){
    return ( x >= this.x && x <= this.x+theWidth && y >= this.y && y <= this.y+theHeight);
  }
  
}
