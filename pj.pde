class Manos {
  PImage [] Personaje = new PImage[17];
  int posXpj, posYpj, tampj, numImg;

  Manos(int posXpj_, int posYpj_, int tampj_) {
    posXpj =  posXpj_;
    posYpj = posYpj_;
    tampj = tampj_;

    for (int p = 0; p<17; p++) {
      Personaje [p] = loadImage("r"+nf(p)+".png");
    }
  }
  void dibujarPj(int num) {  
    numImg= num;
    image( Personaje[numImg], posXpj, posYpj, tampj, tampj*2);
  }
  void moverDerecha() {
    if ( posXpj<width-tampj/2) {
      posXpj += 8;
    }
  }
  void moverIzquierda() {
    if ( posXpj>tampj/2) {
      posXpj -= 8;
    }
  }
} 
