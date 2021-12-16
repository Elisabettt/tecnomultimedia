class FondoJ {

  PImage [] FondoJ = new PImage[7];
  int numImg;

  FondoJ() {

    for (int i = 0; i<7; i++) {
      FondoJ[i] = loadImage("juego"+i+".png");
    }
  }

  void cargarFondo(int num) {

    numImg= num;

    image(FondoJ[numImg], 0, 0, width, height);
    
 }
}
