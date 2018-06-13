// ***** 03 ARRAYS ****

// Aufgabe 1

float[] fliess = new float[12];
boolean[] booli = new boolean[6];
String[] words = new String[3];


// Aufgabe 2

fliess[0] = 0.1;
fliess[1] = 0.2;
fliess[2] = 0.3;

booli[0] = true;
booli[1] = false;
booli[2] = true;

words[0] = "ha";
words[1] = "ll";
words[2] = "o!";

// Aufgabe 3

fliess[3] = 0.1*3+2;
// etc
booli[3] = fliess[0] < fliess[1] && fliess[2] < fliess[3];
// etc
words[0] = "Der Ausdruck: " +fliess[0]+ " < " +fliess[1]+ " && " +fliess[2]+ " < " +fliess[3]+ " ergibt " +booli[3];
println(words[0]);
