class Cero {

  float posXH, posYH, ctam; //propiedades de la hoja
  PImage hoja, trueno, gota;
  int numImg;
  boolean activa;
  int puntos;

  Cero () {

    posXH  = random(0, 800);
    posYH  = random(-width/2); 
    ctam= random(40, 60);
    activa = true;

    hoja = loadImage("hoja0.png");
  }

  Cero (float h) {
    
    posXH  = random(0, 800);
    posYH  = h; 
    ctam= random(30, 40);
    hoja = loadImage("hoja0.png");
    
  }

  void dibujarCero() {
    
    image(hoja, posXH, posYH, ctam, ctam*2);
    
  }

  void movCero() {

    posYH+=5;

    if (posYH>height) {
      posYH= random(-height/2, -ctam);
      ctam= random(30, 40);
      activa =true;
      
    }
  }
}
