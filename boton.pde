class Boton {
  color gradiente, rojo, amarillo;
  float map;
  int bx, by, bancho, balto, act, prox, ts;
  String [] textoBoton;

  Boton(int bx_, int by_, int bancho_, int balto_) {

    bx = bx_;
    by = by_;
    bancho = bancho_;
    balto = balto_;
    rojo = color(255, 0, 0);
    amarillo = color(255, 255, 0);
    surface.setResizable(true);
    textoBoton= loadStrings("tb.txt");
  }
  void dibujarBoton( int act_, int prox_, int numTex, int tS_ ) {

    act= act_ ;
    prox= prox_;
    ts= tS_;

    noStroke();
    fill(250, 255, 0);
    rect(bx, by, bancho, balto, balto/5); 
    textSize(tS_);
    textAlign(LEFT);
    fill(0);
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
