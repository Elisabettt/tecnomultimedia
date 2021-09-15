void bot(int px, int py, int ancho, int alto, String mensaje) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(53, 255, 44);
  } else {
    fill(213, 250, 210);
  }
  noStroke();
  rect(px, py, ancho, alto);
  fill(15,85,12); 
  textAlign(LEFT);
  text(mensaje, px+20, py+30);
}
boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
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
