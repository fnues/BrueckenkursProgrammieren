//////////////////////////////////////////////////////////////////////////
//                                                                      //
// Based on:                                                            //
//    #37 Son of Ra                                                     //
//    http://geometrydaily.tumblr.com/image/17155048079                 //
//    -~=Manoylov AC=~-                                                 //
// Contacts:                                                            //
//    http://manoylov.tumblr.com/                                       //
//    https://codepen.io/Manoylov/                                      //
//    https://www.openprocessing.org/user/23616/                        //
//    https://www.facebook.com/epistolariy                              //
//                                                                      //
//////////////////////////////////////////////////////////////////////////
//                                                                      //
// Controls                                                             //
//    mouse                                                             //
//       click: redraw                                                  //
//                                                                      //
//////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////
//                                                                      //
// Aneleitung                                                           //
//    Geben Sie bei den Variablen die gekennzeichnet sind mit           //
//    ZUM EINGEBEN Ihre Daten an. Verwenden Sie für den geplanten       //
//    Studiengang und das Geschlecht die Variablen Namen der            //
//    vordefinierten Variablen.                                         //
//                                                                      //
//////////////////////////////////////////////////////////////////////////

// ************** vordefinierte Variablen für Studiengang und Geschlecht **********
// STUDIENGÄNGE
float EIT = 10;
float Informatik = 20;
float iCompetence = 40;
float EUT = 50;
float Wing = 70;
float Systemtechnik = 80;
float Anderer = 90;
// GESCHLECHT
float w = 100;
float m = 95;
float o = 90;


// **************** ZUM EINGEBEN ***************
String name = "Fiona Nüesch";
String whyHere = "Ich hoffe einen bereichernden Einblick in die Programmierung zu geben."; // Weshalb sind sie hier? Bzw. weshalb haben sie sich für ihr Studienfach entschieden?
float age = 28;
int knowledge = 30;                  // Vorkentnisse 5 - 15 -> 5 (gar keine), 10 (schon mal etwas gehört), 15 (etwas Grundlagewissen. Ich wusste schon was Variablen sind und habe schon etwas von Schleifen gehört)

float studySubject = iCompetence;   // Voraussichtlicher Studiengang (oben definiert)
float gender = w;
// ************************************************



// *********** NOCH NICHT INTERESSANT ************
float B = 10;
float iter = knowledge;
float H = studySubject;
float S = gender;
int sz = 700;
float diam = sz/(1f/(age*0.05)+1.2);
float step = diam/iter;
int wdt = 65;
int [] ch = { -1, 1 };
float start;

void setup() {
  size(700, 700);
  colorMode(HSB, 100, 100, 100);
  noLoop();
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(10, 3, 90);
  start = diam + diam/2; 

  for (int i = 0; i<iter; ++i) {
    pushMatrix();
    translate(width/2, start-wdt/2);
    rotate(radians(random(7, 22)* ch[(int)random(ch.length)]));
    fill (H, S-i*(100/iter), B+i*((100-8)/iter));
    rect(0, 0, sz, wdt);
    start-= step - random(-step/2, step/2);
    popMatrix();
  }

  stroke(10, 3, 90);
  noFill();
  strokeWeight(300);
  ellipse(width/2-7, height/2, (diam+sz/2), (diam+sz/2));

  paper(30);  // normal value
  
  textSize(32);
  fill(0, 0, 50);
  textAlign(CENTER);
  text(name, width/2, height-height/8);
  textSize(16);
  text(whyHere, width/2, height-height/12);
}

void mousePressed() {
  redraw();
}


void paper(int in_val) {
  noStroke();
  for (int i = 0; i<width-1; i+=2) {
    for (int j = 0; j<height-1; j+=2) {
      fill(random(85-10, 85+10), in_val);
      rect(i, j, 2, 2);
    }
  }

  for (int i = 0; i<30; i++) {
    fill(random(40, 60), random(in_val*2.5, in_val*3));
    rect(random(0, width-2), random(0, height-2), random(1, 3), random(1, 3));
  }
}
