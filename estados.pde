void creditos(){
  text("creditos",10,10);
}
void x() { //titulo
  textSize(50);
  textAlign(CENTER);
  fill(21, 237, 255);

  text(textos[0], width/2, height/2);
  textSize(25);
  botonDibujo(230, 250, 150, 50, bt[0]);
}
void cero() { //compra diario
  image(fondo[0], 0, 0, width, height);
  textSize(25);
  botonDibujo(280, height-100, 180, 50, bt[1]);//boton derecho
  textSize(30);
  textAlign(CENTER);
  fill(10);
  text(textos[1], width/3, height/6);
}
void uno() { // sube al tranvia
  image(fondo[1], 0, 0, width, height);
  textSize(25);
  botonDibujo(50, height-100, 180, 50, bt[1]);//boton izquierdo
  textSize(30);
  textAlign(CENTER);
  fill(200);
  text(textos[2], width/2, height/4);
}
void dos() {//deja el diario
  println(mouseX, mouseY);
  image(fondo[2], 0, 0, width, height);
  textSize(30);
  text(textos[3], width/3, height/6);
  rectMode(CORNER);
  textSize(20);
  botonDibujo(10, height-100, 260, 50, textos[4]);//boton izquierdo
  botonDibujo(width/2, height-100, 289, 50, textos[5]);//boton derecho
}
void tres() { //el diario en un monton d hojas impresas
  image(fondo[17], 0, 0, width, height);
  fill(2);
  textSize(20);
  text(textos[6], 10,30);
  textSize(15);
  botonDibujo(10, height-100, 260, 50, textos[7]);//boton izquierdo //un muchacho lee el diario
  botonDibujo(width/2, height-100, 289, 50, textos[8]);//boton derecho //un estudiante de arte
}
void cuatro() { //un muchacho lee el diario
  image(fondo[3], 0, 0, width, height);
  botonDibujo(280, height-100, 180, 50, bt[1]);//boton derecho
  textSize(20);
  fill(2);
  text(textos[9], 10,30);
}
void cinco() { //deja el diario en el banco de la plaza
  image(fondo[18], 0, 0, width, height);
   textSize(15);
  botonDibujo(10, height-100, 260, 50, textos[17]);//boton izquierdo //un muchacho lee el diario
  botonDibujo(width/2, height-100, 289, 50, textos[18]);
  textSize(18);
  fill(255);
  text(textos[16], 10, 50);
}
void seis() { //se convierte en un monton de hojas impresas
  image(fondo[17], 0, 0, width, height);
  botonDibujo(280, height-100, 180, 50, bt[1]);//boton derecho
}
void siete() { //se convierte en un monton de hojas impresas
  image(fondo[8], 0, 0, width, height);
  botonDibujo(280, height-100, 180, 50, bt[1]);//boton derecho
   fill(0);
   text(textos[20], 10, 50);
}
