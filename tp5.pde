/*
Tecnología Multimedial I
 Comisión 1
 TP#5 RECUPERATORIO
 Alumno: Ambar Elisabet Martinez Nagy
 Legajo:88317/6
 Docente: Jose Luis Bugiolachi
 Vídeo de youtube: https://youtu.be/kf5p8uhy0fA
*/

Control control;
void setup() {
  size(800, 600);

  control = new Control(5);
}
void draw () {
  background(0);
  control.iniciar();
}
void keyPressed() {

  control.moverPj(keyCode);
}
void mousePressed() {

  control.detectarBotones();
}
