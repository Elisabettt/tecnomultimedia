class FondoJ {
  PImage [] FondoJ = new PImage[6];
  int numImg;
  FondoJ() {
    for (int i = 0; i<6; i++) {
      FondoJ[i] = loadImage("juego"+i+".png");
    }
  }
    void cargarFondo(int num) {
      numImg= num;
      image(FondoJ[numImg], 0, 0, width, height);
    }
  }
