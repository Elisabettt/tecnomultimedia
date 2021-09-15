
void mousePressed() {
  if (botonPressed(mouseX, mouseY, width/2, height/2+50, 150, 50) && estado.equals("x")) { 
    estado = "cero";
  }
  if (botonPressed(mouseX, mouseY, 280, height-100, 180, 50) && estado.equals("cero")) {
    estado = "uno";
  }
  else if (botonPressed(mouseX, mouseY, width/2-100, height-100, 180, 50) && estado.equals("uno")) { 
    estado = "dos";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("dos")) { 
    estado = "tres";
  } else if ( botonPressed (mouseX, mouseY, width/2, height-100, 289, 50)&& estado.equals("dos")) { 
    estado = "tres";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("tres")) { 
    estado = "cuatro";
  } else if ( botonPressed (mouseX, mouseY, width/2, height-100, 289, 50)&& estado.equals("tres")) { 
    estado = "cuatrob";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("cuatrob")) { 
    estado = "cuatroc";
  } else if ( botonPressed (mouseX, mouseY, 280, height-100, 180, 50)&& estado.equals("cuatrob")) { 
    estado = "cuatrod";
  } else if ( botonPressed (mouseX, mouseY, 280, height-100, 180, 50)&& estado.equals("cuatrod")) { 
    estado = "cuatroe";
  } else if ( botonPressed (mouseX, mouseY, 280, height-100, 180, 50)&& estado.equals("cuatroc")) { 
    estado = "cinco";
  } else if ( botonPressed (mouseX, mouseY, width/2-100, height-100, 180, 50)&& estado.equals("cuatro")) { 
    estado = "cinco";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("cinco")) { 
    estado = "seis";
  } else if ( botonPressed (mouseX, mouseY, width/2, height-100, 289, 50)&& estado.equals("cinco")) { 
    estado = "seisb";
  } else if ( botonPressed (mouseX, mouseY, 280, height-100, 180, 50)&& estado.equals("seisb")) { 
    estado = "siete";
  } else if ( botonPressed (mouseX, mouseY,width/2-100, height-100, 180, 50)&& estado.equals("seis")) { 
    estado = "siete";
  } else if ( botonPressed (mouseX, mouseY, width/2-100, height-100, 180, 50)&& estado.equals("siete")) { 
    estado = "ocho";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("ocho")) { 
    estado = "nueve";
  } else if ( botonPressed (mouseX, mouseY, 280, height-100, 180, 50)&& estado.equals("ocho")) { 
    estado = "nueveb";
  } else if ( botonPressed (mouseX, mouseY, width/2-100, height-100, 180, 50)&& estado.equals("nueve")) { 
    estado = "diez";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("nueveb")) { 
    estado = "diez";
  } else if ( botonPressed (mouseX, mouseY, width/2, height-100, 289, 50)&& estado.equals("nueveb")) { 
    estado = "nuevec";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("nuevec")) { 
    estado = "nueved";
  } else if ( botonPressed (mouseX, mouseY, 280, height-100, 180, 50)&& estado.equals("nuevec")) { 
    estado = "nuevee";
  } else if ( botonPressed (mouseX, mouseY, 10, height-100, 260, 50)&& estado.equals("diez")) { 
    estado = "once";
  } else if ( botonPressed (mouseX, mouseY, 280, height-100, 180, 50)&& estado.equals("diez")) {
    estado = "oncea";
  } else if ( botonPressed (mouseX, mouseY, width/2-100, height-100, 180, 50)&& estado.equals("oncea")||estado.equals("cuatroe")||estado.equals("nuevee")|| estado.equals("nueved")|| estado.equals("doce")) { // boton derecho
    estado = "creditos";
  } else if ( botonPressed (mouseX, mouseY,width/2-100, height-100, 180, 50)&& estado.equals("once")) { 
    estado = "doce";
  } else if ( botonPressed (mouseX, mouseY, 220, 300, 180, 50)&& estado.equals("creditos")) { 
    estado = "cero";
  }
}
