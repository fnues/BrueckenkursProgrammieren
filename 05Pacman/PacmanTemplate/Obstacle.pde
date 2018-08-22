class Obstacle{
    // Klassenattribute für Position, Länge und Breite.
    // Und isVertical zum definieren ob das Rechteck liegend oder stehend gezeichnet wird.


    // Konstruktor
    Obstacle(float x, float y, boolean isVertical, float obLength, float rectSize){
        // Initialisieren die Position und ob das Hindernis vertical oder horinzontal liegt.
        // Initialisiere die Hindernis Breite und Länge. Diese sind abhängig davon wie das Hindernis liegt.
        // Die längere Seite soll in Einheiten, nicht der effektiven Länge, übergeben werden und muss hier nun wieder in
        // eine Länge umgerechnet werden also: obLength * rectSize
    }

    // Methode zum zeichnen des Rechtecks
    void paint(){
    }

    // Methode die true zurück gibt, wenn die x UND y Parameter das Rechteck berühren
    // oder innerhalb des Rechtecks liegen.
    boolean isTouched(float x, float y){
    }

}
