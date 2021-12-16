class Personaje {

  PImage [] Personaje = new PImage[17];

  int posXpj, posYpj, tampj, numImg;

  Personaje(int posXpj_, int posYpj_, int tampj_) {

    posXpj =  posXpj_;
    posYpj = posYpj_;
    tampj = tampj_;

  
    for (int p = 0; p<17; p++) {
      Personaje [p] = loadImage("r"+nf(p)+".png");
    }
  }

  void dibujarPersonaje(int num) {  
    numImg= num;
    fill(197, 2001, 0);

    image( Personaje[numImg], posXpj, posYpj, tampj*2, tampj*2);
    
  }
  void moverDerecha() {
    if ( posXpj<width-tampj/2) {
      posXpj += 5;
    }
  }
  void moverIzquierda() {
    if ( posXpj>tampj/2) {
      posXpj -= 5;
    }
  }
} 
