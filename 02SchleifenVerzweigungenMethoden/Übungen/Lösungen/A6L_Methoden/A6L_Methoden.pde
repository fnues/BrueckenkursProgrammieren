void setup(){
  println( name("hallo", "velo") );
  
  String zwischenspeicher = name("hello", "world");
  println( zwischenspeicher );
  
  String one = "eins";
  String two = "zwei";
  println( name(one, two) );
}


// AUFGABE 1
// diese methode nimmt zwei strings entgegen, 
// hängt sie zusammen und gibt den neuen zusammengehängten string zurück
String name(String name1, String name2){
  String newName = name1 + "\n" + name2;
  return newName;
}


// AUFGABE 2
// möglichkeit 1
float average(float one, float two, float three, float four){
  return (one + two + three + four)/4;
}
// möglichkeit 2
float average(int one, int two, int three, int four){
  
  return (one + two + three + four)/4.0;
}
// möglichkeit 3
float average(int[] numbers){
  float sum = 0;
  for( int i = 0; i < numbers.length; i++ ) {
    sum += numbers[i];
  }
  return sum / numbers.length;
}


// AUFGABE 3
void printMin(float one, float two, float three){
  if( one < two & one < three){
     println(one); 
  }else if(two < one & two < three){
    println(two); 
  }else{
    println(three); 
  }
}


//AUFGABE 4
// möglichkeit 1
void printMinAverage(int[] one, int[] two, int[] three){
  float averageOne = average(one[0], one[1], one[2], one[3]);
  float averageTwo = average(two[0], two[1], two[2], two[3]);
  float averageThree = average(three[0], three[1], three[2], three[3]);
  printMin(averageOne, averageTwo, averageThree);
}
// möglichkeit 2
void printMinAverageSecond(int[] one, int[] two, int[] three){
  printMin(average(one), average(two), average(three));
}
