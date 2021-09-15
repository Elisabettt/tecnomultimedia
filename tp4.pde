PImage [] fondo = new PImage[19];
color relleno = color(255);
String estado;
String [] textos;
String [] bt;
void setup() {
  size(600, 400);
  println("Estado " + estado);
  estado = "x";
  textos= loadStrings("textos.txt");
  bt= loadStrings("tb.txt");
  for (int i = 0; i<19; i++) {
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
  }
  else if (estado.equals("cuatroc")) {
   cuatroc();
  }
  else if (estado.equals("cuatrod")) {
   cuatrod();
  }
  else if (estado.equals("cuatroe")) {
   cuatroe();
  }
  else if (estado.equals("creditos")) {
   creditos();
  }
  else if (estado.equals("cinco")) {
   cinco();
  }
  else if (estado.equals("seis")) {
   seis();
  }
   else if (estado.equals("siete")) {
   siete();
  }
}
