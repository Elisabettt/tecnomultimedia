/*
Tecnología Multimedial I
 Comisión 1
 TP#6 : Trabajo práctico FINAL - Aventura Gráfica + Video Juego
 Alumna: Ambar Elisabet Martinez Nagy
 Legajo:88317/6
 Docente: Jose Luis Bugiolachi
 Vídeo de youtube: https://youtu.be/cAxuUweLO6s
*/


Control c;

void setup() {

  size (600, 400);
  c= new Control(5);
}

void draw() {

  c.dibujarJuego();
  
}
void keyPressed() {

  c.moverPj(keyCode);
}
void mousePressed(){

  c.detectarBotones();

}
