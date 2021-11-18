class Gota {

  float posXH, posYH, ctam; //propiedades de la hoja
  PImage gotita;
  boolean activaGota;

  Gota () {

    posXH  = random(0, 800);
    posYH  = random(-width/2); 
    ctam= random(40, 60);
    activaGota = true;

    gotita = loadImage("gota.png");
  }

  Gota(float g) {

    posXH  = random(0, 800);
    posYH  = g; 
    ctam= random(40, 60);

    gotita = loadImage("gota.png");
  }

  void dibujarGota() {
    image( gotita, posXH, posYH, ctam, ctam*2);
  }
  void movGota() {
    posYH+=7;

    if (posYH>height) {
      posYH= random(-height/2, -ctam);
      ctam= random(30, 60);
      activaGota = true;
    }
  }
}
