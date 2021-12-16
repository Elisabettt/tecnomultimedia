class Hojas {

  float posXH, posYH, ctam; //propiedades de la hoja
  PImage hoja, trueno, gota;
  int numImg;
  boolean activa;
  int puntos;

  Hojas () {

    posXH  = random(0, 800);
    posYH  = random(-width/2); 
    ctam= random(40, 60);
    activa = true;

    hoja = loadImage("hoja0.png");
  }

  Hojas (float h) {
    posXH  = random(0, 800);
    posYH  = h; 
    ctam= random(40, 60);
    hoja = loadImage("hoja0.png");
  }

  void dibujarHojas() {
    //rect(posXH, posYH, ctam, ctam*2);
    image(hoja, posXH, posYH, ctam, ctam*2);
  }

  void movHojas () {

    posYH+=5;

    if (posYH>height ) {
      posYH= random(-height/2, -ctam);
      ctam= random(30, 60);
      activa =true;
    }
  }
}
