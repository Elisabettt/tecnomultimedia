class Juego {

  Hojas hoja;
  Personaje personaje;
  Trueno t;
  Gota g;
  FondoJ f;
  BotonJuego  btDer;

  int posX, posY, ancho, alto;
  int estadoJ, puntos, vidas, cant;

  Hojas   []  hojas  = new Hojas   [6];
  Gota    []  gota   = new Gota    [6];
  Trueno  []  trueno = new Trueno  [6];

  Juego(int cant_ ) {

    cant = cant_;

    f        = new FondoJ();
    hoja     = new Hojas ();
    t        = new Trueno();
    g        = new Gota  ();
    personaje= new Personaje  (width/2, height-100, 50);
    btDer    = new BotonJuego (340, 540, 430, 50);

    puntos = 0;
    vidas  = 5;

    for (int i=0; i<6; i++) {

      hojas [i] = new Hojas  (50+i*height/6);
      trueno[i] = new Trueno (50+i*height/6);
      gota  [i] = new Gota   (50+i*height/6);
    }
  }
  void iniciar() {

    if (estadoJ==0) {

      puntos = 0;
      vidas  = 5;
      f.cargarFondo(0);
      btDer.dibujarBotonJuego(0, 1, "EMPEZAR");
    }
    if (estadoJ==1) {

      f.cargarFondo(3);
      personaje.dibujarPersonaje(puntos);
      hoja.dibujarHojas();

      for (int i=0; i<hojas.length; i++) {
        hojas[i].dibujarHojas();
        hojas[i].movHojas    ();
      }
      atraparDiario();
      text (puntos, 100, 50);
      text (vidas, 100, 85);
    }

    if ( puntos>4) { //aparece enemigo Trueno

      hoja.dibujarHojas();
      t.dibujarTrueno  ();
      atraparTrueno    ();
      f.cargarFondo    (4);

      for (int i=0; i<gota.length; i++) {
        trueno[i].dibujarTrueno();
        trueno[i].movTrueno    ();
        hojas[i].dibujarHojas  ();
        hojas[i].movHojas      ();
      }
      personaje.dibujarPersonaje(puntos);
      text(puntos, 100, 50);
      text(vidas, 100, 85);
    }
    if (puntos>9 ) { //aparece enemigo Gota

      t.dibujarTrueno  ();
      atraparTrueno    ();
      hoja.dibujarHojas();
      g.dibujarGota    ();
      atraparGota      ();
      f.cargarFondo(5);
      for (int i=0; i<gota.length; i++) {
        gota  [i].dibujarGota  ();
        gota  [i].movGota      ();
        hojas [i].dibujarHojas ();
        hojas [i].movHojas     ();
        trueno[i].dibujarTrueno();
        trueno[i].movTrueno    ();
      }

      personaje.dibujarPersonaje(puntos);
      text (puntos, 100, 50);
      text (vidas, 100, 85);
    }
  }
  void ganar() {

    if (puntos == 15 ) { //ganar
      estadoJ =3;
    }
    if (estadoJ==3) {//ganar
      f.cargarFondo(2);  
      ganar.play();
    }
  }  
  void perder() {

    if (vidas==0 ) { //perder
      estadoJ=4;
    }
    if (estadoJ==4) {//perder
      f.cargarFondo(1); 
      perder.play();
    }
  }
  void moverPersonaje(int tecla_) {
    int tecla = tecla_;
    if (tecla==RIGHT) {
      personaje.moverDerecha();
    }
    if (tecla==LEFT) {
      personaje.moverIzquierda();
    }
  }
  void atraparDiario() {
    for (int i=0; i<cant; i++) {
      boolean atraparDiario = dist(hojas[i].posXH, hojas[i].posYH, personaje.posXpj, personaje.posYpj) < personaje.tampj/2+hojas[i].ctam/2;
      if (atraparDiario  && hojas[i].activa) {
        puntos++;
        hojas[i].activa = false;
      }
    }
  }
  void atraparTrueno() {
    for (int i=0; i<cant; i++) {
      boolean atraparTrueno = dist(trueno[i].posXH, trueno[i].posYH, personaje.posXpj, personaje.posYpj) < personaje.tampj/2+trueno[i].ctam/2;
      if (atraparTrueno && trueno[i].activaTrueno) {
        vidas--;
        trueno[i].activaTrueno = false;
      }
    }
  }
  void atraparGota() {
    for (int i=0; i<cant; i++) {
      boolean atraparGota = dist(gota[i].posXH, gota[i].posYH, personaje.posXpj, personaje.posYpj) < personaje.tampj/2+gota[i].ctam/2;
      if (atraparGota  && gota[i].activaGota) {
        vidas--;
        gota[i].activaGota = false;
      }
    }
  }
  void detectarBotones() {
    if (btDer.botonPresionado(340, 540, 430, 50) && estadoJ == btDer.act) {
      estadoJ  = btDer.prox;
    }
  }
}
