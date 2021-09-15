void mousePressed() {
  if (botonPressed(mouseX, mouseY, width/2, height/2+50, 150, 50) && estado.equals("x")) { 
    estado = "cero";
  }
  if (botonPressed(mouseX, mouseY, 280, height-100, 180, 50) && estado.equals("cero")) { // boton derecho
    estado = "uno";
  }
  if (botonPressed(mouseX, mouseY, 50, height-100,  180, 50) && estado.equals("uno")) { // boton derecho
    estado = "dos";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("dos")) { // boton derecho
    estado = "tres";
  } else if ( botonPressed (mouseX, mouseY, width/2, height-100, 289, 50)&& estado.equals("dos")) { // boton izquiero
    estado = "tres";
  } else if ( botonPressed (mouseX, mouseY,10, height-100, 260, 50)&& estado.equals("tres")) { // boton izquierdo
    estado = "cuatro";
  }
  else if ( botonPressed (mouseX, mouseY,width/2, height-100, 289, 50)&& estado.equals("tres")) { // boton derecho
    estado = "cuatrob";
  }
  else if ( botonPressed (mouseX, mouseY,10, height-100, 260, 50)&& estado.equals("cuatrob")) { // botonizquierdo
    estado = "cuatroc";
  }
   else if ( botonPressed (mouseX, mouseY,280, height-100, 180, 50)&& estado.equals("cuatrob")) { // botonizquierdo
    estado = "cuatrod";
  }
   else if ( botonPressed (mouseX, mouseY,280, height-100, 180, 50)&& estado.equals("cuatrod")) { // botonizquierdo
    estado = "cuatroe";
  }
  else if ( botonPressed (mouseX, mouseY,280, height-100, 180, 50)&& estado.equals("cuatroe")) { // botonizquierdo
    estado = "creditos";
  }
   else if ( botonPressed (mouseX, mouseY,280, height-100, 180, 50)&& estado.equals("cuatro")) { // botonizquierdo
    estado = "cinco";
  }
   else if ( botonPressed (mouseX, mouseY,10, height-100, 260, 50)&& estado.equals("cinco")) { // botonizquierdo
    estado = "seis";
  }
   else if ( botonPressed (mouseX, mouseY,280, height-100, 180, 50)&& estado.equals("seis")) { // botonizquierdo
    estado = "siete";
   }
}
