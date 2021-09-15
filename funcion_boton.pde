
void botonDibujo(int px, int py, int ancho, int alto, String mensaje) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(0, 150, 240);
  } else {
    fill(0, 0, 255);
  }
  rect(px, py, ancho, alto);
  fill(200); 
  textAlign(LEFT);
  text(mensaje, px+20, py+30);
}
boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}
boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
    return true;
  } else {
    return false;
  }
}

void keyPressed() {
  estado = "x";
}
