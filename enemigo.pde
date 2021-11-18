class Trueno {

  float posXH, posYH, ctam; //propiedades de la hoja
  PImage hoja,trueno,gota;
  boolean activaTrueno;

  Trueno () {

    posXH  = random(0, 800);
    posYH  = random(-width/2); 
    ctam= random(40, 60);
    activaTrueno = true;

     trueno = loadImage("trueno.png");
  }

  Trueno (float t) {

    posXH  = random(0, 800);
    posYH  = t; 
    ctam= random(40, 60);
 
    trueno = loadImage("trueno.png");
  
  }

  void dibujarTrueno() {
 
    image(trueno, posXH, posYH, ctam, ctam*2);
  }
  void movTrueno() {
    posYH+=6;

    if (posYH>height) {
      posYH= random(-height/2, -ctam);
      ctam= random(30, 60);
      activaTrueno = true;
    }
  }
}
