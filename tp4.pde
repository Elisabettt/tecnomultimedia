/*
Tecnología Multimedial I
 Comisión 1
 TP#4-Aventura Grafica
 Alumno: Ambar Elisabet Martinez Nagy
 Legajo:883317/6
 Docente: Jose Luis Bugiolachi
 Vídeo de youtube: https://youtu.be/Ad38wtvkdDo
 */
PImage [] fondo = new PImage[25];
String estado;
String [] textos;
String [] bt;
void setup() {
  size(600, 400);
  estado = "x";
  textos= loadStrings("textos.txt");
  bt= loadStrings("tb.txt");
  for (int i = 0; i<25; i++) {
    fondo[i] = loadImage("fondo"+nf(i)+".jpg");
  }
}
void draw () {
  background(255, 253, 224);
  println("Estado " + estado);
  println(mouseX, mouseY);
  if (estado.equals("x")) {
    x();
  } else if (estado.equals("cero")) {
    cero();
  } else if (estado.equals("uno")) {
    uno();
  } else if (estado.equals("dos")) {
    dos();
  } else  if (estado.equals("tres")) {
    tres();
  } else  if (estado.equals("cuatro")) {
    cuatro();
  } else if (estado.equals("cuatrob")) {
    cuatrob();
  } else if (estado.equals("cuatroc")) {
    cuatroc();
  } else if (estado.equals("cuatrod")) {
    cuatrod();
  } else if (estado.equals("cuatroe")) {
    cuatroe();
  } else if (estado.equals("creditos")) {
    creditos();
  } else if (estado.equals("cinco")) {
    cinco();
  } else if (estado.equals("seis")) {
    seis();
  } else if (estado.equals("siete")) {
    siete();
  } else if (estado.equals("seisb")) {
    seisb();
  } else if (estado.equals("ocho")) {
    ocho();
  } else if (estado.equals("nueve")) {
    nueve();
  } else if (estado.equals("nueveb")) {
    nueveb();
  } else if (estado.equals("nuevec")) {
    nuevec();
  } else if (estado.equals("nueved")) {
    nueved();
  } else if (estado.equals("nuevee")) {
    nuevee();
  } else if (estado.equals("diez")) {
    diez();
  } else if (estado.equals("once")) {
    once();
  } else if (estado.equals("oncea")) {
    oncea();
  } else if (estado.equals("doce")) {
    doce();
  }
}
