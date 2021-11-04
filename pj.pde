/*cargar pj- mover para los costados */
class Manos {
   PImage personaje;
  int px, py, tam;
  Manos(int px_, int py_, int tam_) {
    px = px_;
    py = py_;
    tam = tam_;
 personaje= loadImage("r1.png");
  }
  void dibujarPj() {
    image( personaje, px,py, tam, tam*2);
  }
  void moverDerecha() {
    if (px<width-tam/2) {
      px += 5;
    }
  }
  void moverIzquierda() {
    if (px>tam/2) {
      px -= 5;
    }
  }
} 
