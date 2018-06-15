// SCHLEIFEN

// AUFGABE 1
int[] array = {0, 6, 2, 8, 4, 9, 5};
for(int i = 0; i < array.length; i++){
 println(array[i]); 
}

// AUFGABE 2
int[] numbers = new int[10];
for( int i = 0; i < numbers.length; i++){
 numbers[i] = i; 
}

// AUFGABE 3
int[] numz = new int[10];
for( int i = 0; i < numz.length; i++){
 numz[i] = i+1; 
}

// AUFGABE 4
int[] whileNumbers = new int[10];
int count = 0;
while ( count < whileNumbers.length ){
 whileNumbers[count] = count+1;
 count++;
}

// AUFGABE 5
int[] random = {5, 5, 4, 3, 5, 2, 1, 1, 6, 3};

int sum = 0;
float average = 4;

int j = 0;
while( average >= 3.7 & j < random.length ){
  sum += random[j];
  average = sum / (j+1);
  println(average);
  j++;
}
