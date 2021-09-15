void creditos() {
  image(fondo[23], 0, 0, width, height);
  textSize(25);
  bot(220, 300, 180, 50, bt[8]);
}
void x() { //titulo
  image(fondo[22], 0, 0, width, height);
  textSize(50);
  textAlign(CENTER);
  fill(21, 237, 255);
  textSize(25);
  bot(230, 250, 150, 50, bt[0]);
}
void cero() { //compra diario
  image(fondo[0], 0, 0, width, height);
  textSize(25);
  bot(width/2-100, height-100, 180, 50, bt[1]);//boton centrado
  textSize(30);
  textAlign(CENTER);
  fill(10);
  text(textos[1], width/3, height/6);
}
void uno() { 
  image(fondo[1], 0, 0, width, height);
  textSize(25);
   bot(width/2-100, height-100, 180, 50, bt[1]);//boton centrado
  textSize(30);
  textAlign(CENTER);
  fill(250);
  text(textos[2], width/2, height/4);
}
void dos() {
  println(mouseX, mouseY);
  image(fondo[2], 0, 0, width, height);
  textSize(30);
  text(textos[3], width/3, height/6);
  rectMode(CORNER);
  textSize(20);
  bot(10, height-100, 260, 50, textos[4]);//boton izquierdo
  bot(width/2, height-100, 289, 50, textos[5]);//boton derecho
}
void tres() { 
  image(fondo[17], 0, 0, width, height);
  fill(2);
  textSize(20);
  text(textos[6], 10, 30);
  textSize(15);
  bot(10, height-100, 260, 50, textos[7]);//boton izquierdo //un muchacho lee el diario
  bot(width/2, height-100, 289, 50, textos[8]);//boton derecho //un estudiante de arte
}
void cuatro() { 
  image(fondo[3], 0, 0, width, height);
  textSize(25);
  bot(width/2-100, height-100, 180, 50, bt[1]);//boton centrado
  textSize(20);
  fill(2);
  text(textos[9], 10, 30);
}
void cinco() { 
  image(fondo[18], 0, 0, width, height);
  textSize(15);
  bot(10, height-100, 260, 50, textos[17]);//boton izquierdo //un muchacho lee el diario
  bot(width/2, height-100, 289, 50, textos[18]);
  textSize(18);
  fill(255);
  text(textos[16], 10, 50);
}
void seis() { 
  image(fondo[17], 0, 0, width, height);
 textSize(25);
   bot(width/2-100, height-100, 180, 50, bt[1]);//boton centrado
  fill (5);
  textSize(30);
  textAlign(CENTER);
  text(textos[19], width/2, height/4);
}
void siete() { 
  image(fondo[8], 0, 0, width, height);
  textSize(25);
   bot(width/2-100, height-100, 180, 50, bt[1]);//boton centrado
  fill(0);
  textSize(20);
  text(textos[21], 10, 50);
}
void ocho() { 
  image(fondo[19], 0, 0, width, height);
  textSize(20);
  bot(10, height-100, 260, 50, textos[17]);//boton izquierdo
  bot(width/2, height-100, 289, 50, textos[25]);//boton derecho
  fill(255);
  textSize(30);
  stroke(12);
  text(textos[23], 10, 50);
  text(textos[24], 10, 80);
}
void nueve() { 
  image(fondo[17], 0, 0, width, height);
 textSize(25);
   bot(width/2-100, height-100, 180, 50, bt[1]);//boton centrado
  fill (5);
  textSize(30);
   textAlign(CENTER);
  text(textos[19], width/2, height/4);
}
void diez() { //se convierte en un monton de hojas impresas
  image(fondo[13], 0, 0, width, height);
  textSize(15);
  bot(10, height-100, 260, 50, textos[31]);//boton izquierdo
  bot(width/2, height-100, 289, 50, textos[32]);//boton derecho
  fill (5);
  textSize(30);
  text(textos[29], 10, 50);
  text(textos[30], 10, 80);
}
void once() { 
  image(fondo[14], 0, 0, width, height);
 textSize(25);
   bot(width/2-100, height-100, 180, 50, bt[1]);//boton centrado
  fill (5);
  textSize(30);
  text(textos[33], 10, 50);
}
void doce() { 
   image(fondo[24], 0, 0, width, height);
  textSize(25);
  text(textos[40], 10, 50);
  text(textos[41], 10, 80);
  textSize(20);
   bot(width/2-100, height-100, 180, 50, bt[1]);//boton centrado
}
