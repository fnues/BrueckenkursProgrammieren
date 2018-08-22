class Nugget{
    // Attribute für Position und Grösse (setzte Grösse = 5)
    // Attribut für visible Zustand. Also Attribut das speichern kann ob ein Nugget visible ist oder nicht

    Nugget(float x, float y){
        this.x = x;
        this.y = y;
    }


    void paint(){
        // zeichne einen blauen Kreis, falls das Nugget visible ist
    }


    boolean getsEaten(float x, float y){
        // teste ob das Nugget gegessen wird / ob der Pacman das Nugget berührt
        // vergesse nicht, dass es nicht mehr gegessen werden kann, wenn es nicht visible ist
    }


    void setVisible(boolean visible){
        // eine Methode um das visible Attribut zu setzen.
    }

}
