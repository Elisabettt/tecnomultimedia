class Boton {

  int bx, by, bancho, balto, act, prox, ts;
  String [] textoBoton;

  Boton(int bx_, int by_, int bancho_, int balto_) {

    bx = bx_;
    by = by_;
    bancho = bancho_;
    balto = balto_;

    textoBoton= loadStrings("tb.txt");
  }
  void dibujarBoton( int act_, int prox_, int numTex, int tS_ ) {

    act= act_ ;
    prox= prox_;
    ts= tS_;

    noStroke();
    fill(53, 255, 44);
    rect(bx, by, bancho, balto, balto/5); 
    textSize(tS_);
    textAlign(LEFT);
    fill(15, 85, 12);
    text(textoBoton[numTex], bx+20, by+30);
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
