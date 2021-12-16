
/*
Tecnología Multimedial I
 Comisión 1
 TP#FINAL RECUPERATORIO
 Alumno: Ambar Elisabet Martinez Nagy
 Legajo:88317/6
 Docente: Jose Luis Bugiolachi
 Vídeo de youtube:  https://youtu.be/Y_ZM8Gv-OVg
 */
 
import processing.sound.*;

SoundFile  ganar, perder;
Control c;

void setup() {

  size (800, 600);
  c= new Control(5);

  ganar = new SoundFile(this, "ganar.wav");
  perder= new SoundFile(this, "perder.wav");
}

void draw() {

  c.dibujarAventura();
  
  c.dibujarJuego();

}
void mousePressed() {

  c.detectarBotones();
}
