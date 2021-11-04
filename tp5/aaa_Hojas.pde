class Cero {
  
  int cant = 6;
  int posX, posY, ancho, alto, vel;
  PImage[] Hojas = new PImage[cant];


  Cero () {
    posX  = 50;
    posY  = -50;
    ancho = 50;
    alto  = 100;
    vel= 2;

    posY = int (random(-100, -400));
    posX = int (random(0, 800));
    for (int i=0; i<6; i++) {
      Hojas[i] = loadImage("hoja"+i+".png");
    }
  }
  void dibujarCero() {
   image(Hojas[1], posX, posY, ancho, alto);
    
  }
  void movCero() {

    if (posY>height+ancho ) { // si sale de la ventana, la reiniciamos
      posX = int (random(-width/2, -ancho)); 
      ancho = int(random(30, 50));
      vel = int (random(2, 4));
    }
    
    posY+=+5;
  }

  }
