/*cargar pj- mover para los costados */
class Manos {
   PImage personaje;
  int posXpj, posYpj, tampj;
  Manos(int posXpj_, int posYpj_, int tampj_) {
    posXpj =  posXpj_;
    posYpj = posYpj_;
    tampj = tampj_;
 personaje= loadImage("r1.png");
  }
  void dibujarPj() {
    image( personaje,  posXpj,posYpj, tampj, tampj*2);
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
