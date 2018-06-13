// ***** 02 OPERATOREN *****

// Aufgabe 1
int a = 2;
int b = 3;

println(a == 2 && b < 8);
println(a != 2 || !(b < 2));
println(a == 2 ^b > 0);
println(a == 0 && b++ == 3);

// Aufgabe 2
b = 3;
println(b);
println(a == 0 && ++b == 3);
println(b);
println(a == 0 & b++ == 3);
println(b);
println(a == 2 || b++ == 3);
println(b);
println(a == 2 | ++b == 3);
println(b);

// Aufgabe 3
// population growth

long P0 = 7616305225L;    // population start
float e = 2.71827;       // Euler number
float r = .05;            // rate of growth in %
int t = 5;                // time

double P = P0 * pow(e, r*t);
