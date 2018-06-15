// ******** Variablen ***********

// AUFGABE 1
int one;
int two;
one = 3;
two = 4;
int three;
three = one + two;
println(three);


// AUFGABE 2
boolean bone;
boolean btwo;
bone = true;
btwo = false;
boolean bthree;
bthree = bone & btwo;
println(bthree);


// andere lösungsmöglichkeit für die Aufgaben:
int on = 3;
int tw = 4;
int thre = on + tw;
println(three);



// ***** LOGISCHE OPERATOREN ******

int a = 20;
int b = 10;
int c = 5;
int d = 7;

// AUFGABE 2
boolean bfour = a < b & a < c;
println(bfour);

// AUFGABE 3
boolean bfive = a < b | a < c;
println(bfive);

// AUFGABE 4
boolean bsix = b <= a & c <= d;
println(bsix);


// ***** ARRAYS ******

// AUFGABE 3
int[] numbers = new int[6];
numbers[2] = 4;
int var = numbers[2];
println(var, numbers[2]);

// AUFGABE 4
boolean[] truth = new boolean[3];
truth[0] = true;
truth[1] = true;
truth[2] = true;
println(truth[0], truth[1], truth[2]);

// AUFGABE 5
int[] numz = new int[2];
numz[0] = 3;
numz[1] = 4;
int result = numz[0] + numz[1];
println(result);


// ****** SCHLEIFEN *******

// AUFGABE 1
for( int i = 0; i <= 10; i++){
 println(i); 
}

// AUFGABE 2
for( int i = 0; i < 10; i++){
 println(i); 
}

// AUFGABE 3
int j = 0;
while( j <= 10 ){
  println(j); 
  j++;
}

// AUFGABE 4
for( int i = 18; i > 10; i--){
 println(i); 
}

// AUFGABE 5
int sum = 0;
for( int i = 18; i > 10; i--){
  sum = sum + i;
  // andere möglichkei: sum += i;
}
println(sum);

// AUFGABE 6
for(int i = 0; i <= 10; i++){
  println(2*i);
}


// AUFGABE 7
int nsum = 0;
for(int i = 1; i <= 10; i++){
  nsum = nsum + i;
}
println(nsum);

// AUFGABE 8
for(int i = 1; i <= 10; i++){
  println("Das Quadrat von " + i + " ist " + i*i);
}

// AUFGABE 9
int[] theArray = {6,3,8,2,9};
for(int i = 0; i < theArray.length; i++){
  println(theArray[i]);
}

// AUFGABE 10
int[] tenNumbers = new int[10];
for(int i = 0; i < tenNumbers.length; i++){
  tenNumbers[i] = i;
}
println(tenNumbers);

// AUFGABE 11
int[] more = new int[10];
for(int i = 0; i < more.length; i++){
  more[i] = i+1;
}
println(more);
