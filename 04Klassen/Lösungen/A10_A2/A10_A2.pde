void setup(){
  Car car1 = new Car(10, 10);
  Car car2 = new Car(color(0), 100, 100, 50);
  Car car3 = new Car(color(50), 200, 200, 40, 1);
  
  // Car robert = new Car(); kann hier nicht verwendet werden, da wir keinen Konstruktor ohne Parameter definiert haben
  // und der default Konstruktor nur verwendet werden kann, für den Fall dass wir nicht selber Konstruktoren geschrieben haben.
}
