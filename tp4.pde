PImage [] fondo = new PImage[17];
color relleno = color(255);
String estado;
String [] textos;
void setup(){
  size(600,400);
  println("Estado " + estado);
  estado = "x";
   textos= loadStrings("textos.txt");
  for (int i = 0; i<17; i++){
  fondo[i] = loadImage("fondo"+nf(i)+".jpg");
  }
}
 
void draw (){
  background(0);
  println("Estado " + estado);
   if (estado.equals("x")) {
   x();
  }else if (estado.equals("cero")) {
   cero();
  }else if (estado.equals("uno")) {
   uno();
   }
   if (estado.equals("dos")) {
   dos();
   }
   if (estado.equals("tres")) {
   tres();
   
}
}
void mousePressed() {
  if (botonPressed(mouseX, mouseY, 50, 50, 100, 50) && estado.equals("x")) { // boton izquierdo
    estado = "cero";
  }
  if (botonPressed(mouseX, mouseY, width-150, height-100, 100, 50) && estado.equals("cero")) { // boton derecho
    estado = "uno";
  }
  if (botonPressed(mouseX, mouseY, 50, height-100, 100, 50) && estado.equals("uno")){ // boton derecho
    estado = "dos";
  }
   /*if ( botonPressed (mouseX, mouseY, width-150, height-100, 100, 50)&& estado.equals("dos")){ // boton derecho
    estado = "tres";
   }
    if ( botonPressed (mouseX, mouseY, 50, height-100, 100, 50)&& estado.equals("dos")  ){ // boton derecho
    estado = "tres";*/
}
