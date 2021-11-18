class Boton {
 
  int bx, by, bancho, balto,act,prox;
  String text;

  Boton(int bx_, int by_, int bancho_, int balto_) {
    
    bx = bx_;
    by = by_;
    bancho = bancho_;
    balto = balto_;
  
  }
  void dibujarBoton( int act_, int prox_, String text_ ) {
    
    act= act_ ;
    prox= prox_;
    text= text_;

    noStroke();
    fill(189,227,188);
    rect(bx, by, bancho, balto, balto/5); 
    textSize(20);
    textAlign(LEFT);
    fill(255);
    text(text,520, by+30);
  }
  boolean botonPresionado(int bx_, int by_, int bancho_, int balto_) {
    
    bx = bx_;
    by = by_;
    bancho = bancho_;
    balto = balto_;
    
    boolean presionado = mouseX>bx && mouseX<bx+bancho && mouseY>by && mouseY <by+balto == true; 
    return presionado;
   
  }
}
