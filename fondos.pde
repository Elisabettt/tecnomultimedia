class Fondo {
  PImage fondo,perder,ganar;
  Fondo() {
    fondo = loadImage("fondo.png");
    perder= loadImage("2.png");
    ganar = loadImage("3.png");
  }
  void cargarFondoI() { // fondo del inicio
    image(fondo, 0, 0, width, height);
  }
  void cargarFondoP() { // fondo del inicio
    image(perder, 0, 0, width, height);
  }
  void cargarFondoG() { // fondo del inicio
    image(ganar, 0, 0, width, height);
  }
}
