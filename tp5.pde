/*
Tecnología Multimedial I
 Comisión 1
 TP#5
 Alumno: Ambar Elisabet Martinez Nagy
 Legajo:88317/6
 Docente: Jose Luis Bugiolachi
 Vídeo de youtube:https://youtu.be/MTSqitpfyxI
 */
Control control;
void setup(){
  size(800, 600);
 
 control = new Control();
}
void draw (){
  println(control.estado);
   background(0);
control.iniciar();
}
void keyPressed(){
control.tecla(keyCode);
control.moverPj(keyCode);
}
