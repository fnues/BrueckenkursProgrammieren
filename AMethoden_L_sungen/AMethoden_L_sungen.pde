void setup(){
  // A1
  writeText("Hallo Velo");
  
  // A2
  println( add( 1, 2 ) );
  
  // A3
  String concatedString = concat("first", "second", true);
  println(concatedString);
  
  // A4
  println( circumstance(3) );
  
  // A5
  println( getMonthByNumber(5) );
  
  // A6
  println( isEven(5) );
  
  // A7
  printSquare(5);
  
  // A8
  int[] oddNumbers1 = getOddNumbersForRange(1, 9);
  int[] oddNumbers2 = getOddNumbersForRange(1,8);
  println(oddNumbers1);
  println(oddNumbers2);
}


// AUFGABE 1
void writeText(String text){
  println(text);
}


// AUFGABE 2
int add(int sumandOne, int sumandTwo){
  int sum = sumandOne + sumandTwo;
  return sum;
}
// AUFGABE 2 andere möglichkeit
int addOther(int sumandOne, int sumandTwo){
  return sumandOne + sumandTwo;
}


// AUFGABE 3
String concat(String word1, String word2, boolean reverseOrder){
  
  String result;
  
  if(reverseOrder){
    result = word2 + word1;
  }else{
    result = word1 + word2;
  }
  
  return result;
}


// AUFGABE 4
double circumstance(double radius){
  return PI * 2 * radius;
}


// AUFGABE 5
String getMonthByNumber( int number ) {
  if( number == 1){
   return "Januar"; 
  }
  if( number == 2){
   return "Februar"; 
  }
  if( number == 3){
   return "März"; 
  }
  if( number == 4){
   return "April"; 
  }
  if( number == 5){
   return "Mai"; 
  }
  if( number == 6){
   return "Juni"; 
  }
  if( number == 7){
   return "Juli"; 
  }
  if( number == 8){
   return "August"; 
  }
  if( number == 9){
   return "September"; 
  }
  if( number == 10){
   return "Oktober"; 
  }
  if( number == 11){
   return "November"; 
  }
  if( number == 2){
   return "Dezember"; 
  }
  
  return "not a month number";
}


// AUFGABE 6
boolean isEven(int number){
  if( number % 2 == 0 ){
    return true;
  }else{
    return false;
  }
}


// AUFGABE 7
void printSquare(int size){
  for(int i = 0; i < size; i++){
   for(int j = 0; j < size; j++){
     print("*"); 
   }
   println();
  }
}


// AUFGABE 8 - Für Fortgeschrittene
int[] getOddNumbersForRange(int start, int end){
  
  // first we have to calculate the size of the array:
  int evenStart;
  if( start % 2 == 1 ){
     evenStart = start - 1; 
  }else{
    evenStart = start;
  }
  
  int evenEnd;
  if( end % 2 == 1 ){
     evenEnd = end + 1; 
  }else{
    evenEnd = end;
  }
  
  int amountOfOddNumbersInRange = (evenEnd - evenStart) / 2;
  int[] oddNumbers = new int[amountOfOddNumbersInRange];
  
  // then we can fill the array with the odd numbers
  int i = 0;
  int number = start;
  while( number <= end){
    if( number % 2 == 1 ){
      oddNumbers[i] = number;
      i++;
    }
    number++;
  }
  
  
  return oddNumbers;
}

// A6 - Andere Möglichkeit für noch fortgeschrittenere
int[] getOddNumbersForRangeOther(int start, int end){
  
  // we have to check whether start is smaller then end
  // otherwhise the funcionality doesnt work, so we have to swap numbers
  if( start > end ){
    int temp = start;
    start = end;
    end = temp;
  }
  
  // first we have to calculate the size of the array:
  int evenStart = ( start % 2 == 1) ? start - 1 : start;
  int evenEnd =  ( end % 2 == 1 ) ? end + 1 : end;
  
  int amountOfOddNumbersInRange = (evenEnd - evenStart) / 2;
  int[] oddNumbers = new int[amountOfOddNumbersInRange];
  
  // then we can fill the array with the odd numbers
  int i = 0;
  int number = start;
  while( number <= end){
    if( number % 2 == 1 ){
      oddNumbers[i] = number;
      i++;
    }
    number++;
  }
  
  
  return oddNumbers;
}
