void x() { //titulo
  textSize(50);
  textAlign(CENTER);
  fill(255, 0, 0);
  text(textos[0], width/2, height/2);
  botonDibujado(50, 50, 100, 50);
}
void cero() { //compra diario
  image(fondo[0], 0, 0, width, height);
  botonDibujado(width-150, height-100, 100, 50);//boton derecho
  textSize(30);
  textAlign(CENTER);
  fill(10);
  text(textos[1], width/3, height/6);
}
void uno() { // sube al tranvia
  image(fondo[1], 0, 0, width, height);
  botonDibujado(50, height-100, 100, 50);//boton izquierdo
  textSize(30);
  textAlign(CENTER);
  fill(200);
  text(textos[2], width/2, height/4);
}
void dos() {//deja el diario
  image(fondo[2], 0, 0, width, height);
  botonDibujado(50, height-100, 100, 50);//boton izquierdo
  botonDibujado(width-150, height-100, 100, 50);//boton derecho
  textSize(30);
  textAlign(CENTER);
  fill(200);
  text(textos[3], width/3, height/6);
  fill(200);
  textSize(10);
  text(textos[4], width-100, height-80);
}
void tres() {
 botonDibujado(50, height-100, 100, 50);//boton izquierdo
  botonDibujado(width-150, height-100, 100, 50);//boton derecho
  textSize(20);
  fill(200);
  text(textos[5],width/2, height/6);
}
