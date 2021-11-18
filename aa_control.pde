class Control {

  Cero cero;
  Manos m;
  Trueno t;
  Gota g;
  FondoJ f;
  Boton  btDer;


  int posX, posY, ancho, alto;
  int estado, puntos, vidas, cant;

  Cero[] ceros= new Cero[6];
  Gota[] gota= new Gota[6];
  Trueno[] trueno= new Trueno[6];


  Control(int cant_ ) {

    cant = cant_;

    m= new Manos(width/2, height-100, 50);
    f = new FondoJ();
    cero= new Cero();
    t= new Trueno();
    g= new Gota();
    btDer = new Boton(340,540, 430, 50);

    puntos = 0;
    vidas= 5;


    for (int i=0; i<6; i++) {
      ceros [i] = new Cero   (50+i*height/6);
      trueno[i] = new Trueno (50+i*height/6);
      gota  [i] = new Gota   (50+i*height/6);
    }
  }
  void iniciar() {
    if (estado==0) {
      f.cargarFondo(0);
       puntos = 0;
       vidas = 5;
        btDer.dibujarBoton(0, 1,"EMPEZAR");
    }
    if (estado==1) {
      f.cargarFondo(5);
      m.dibujarPj();
      cero.dibujarCero();
      for (int i=0; i<ceros.length; i++) {
        ceros[i].dibujarCero();
        ceros[i].movCero();
      }
      atraparDiario();
      text(puntos,96,50);
      text(vidas, 96, 85);
    }

    if ( puntos>4) { //aparece enemigo Trueno

      cero.dibujarCero();
      t.dibujarTrueno();
      atraparTrueno();
      f.cargarFondo(3);
      for (int i=0; i<gota.length; i++) {
        trueno[i].dibujarTrueno();
        trueno[i].movTrueno();
        ceros[i].dibujarCero();
        ceros[i].movCero();
      }
      m.dibujarPj();
      text(puntos,96,50);
      text(vidas, 96, 85);
    }
    if (puntos>9 ) { //aparece enemigo Gota
      t.dibujarTrueno();
      atraparTrueno();
      cero.dibujarCero();
      g.dibujarGota();
      atraparGota();
      f.cargarFondo(4);
      for (int i=0; i<gota.length; i++) {
        gota[i].dibujarGota();
        gota[i].movGota();
        ceros[i].dibujarCero();
        ceros[i].movCero();
        trueno[i].dibujarTrueno();
        trueno[i].movTrueno();
      }
      m.dibujarPj();
      text(puntos, 50, 50);
      text(vidas, 50, 100);
    }
    if (puntos == 15 ) { //ganar
      estado =3;
     
    }
    if (estado==3) {//ganar
      f.cargarFondo(2);
       btDer.dibujarBoton(3, 0,"reiniciar");
    }
    if (vidas== 0  ) { //perder
      estado =4;
       
    }
    if (estado==4) {//perder
      f.cargarFondo(1);
      btDer.dibujarBoton(4, 0,"reiniciar");
    }
  }


  void moverPj(int tecla_) {
    int tecla = tecla_;
    if (tecla==RIGHT) {
      m.moverDerecha();
    }
    if (tecla==LEFT) {
      m.moverIzquierda();
    }
  }
  void atraparDiario() {
    for (int i=0; i<cant; i++) {
      boolean atraparDiario = dist(ceros[i].posXH, ceros[i].posYH, m.posXpj, m.posYpj) < m.tampj/2+ceros[i].ctam/2;
      if (atraparDiario  && ceros[i].activa) {
        puntos++;
        ceros[i].activa = false;
      }
    }
  }
  void atraparTrueno() {
    for (int i=0; i<cant; i++) {
      boolean atraparTrueno = dist(trueno[i].posXH, trueno[i].posYH, m.posXpj, m.posYpj) < m.tampj/2+trueno[i].ctam/2;
      if (atraparTrueno  && trueno[i].activaTrueno) {
        vidas--;
        trueno[i].activaTrueno = false;
      }
    }
  }
  void atraparGota() {
    for (int i=0; i<cant; i++) {
      boolean atraparGota = dist(gota[i].posXH, gota[i].posYH, m.posXpj, m.posYpj) < m.tampj/2+gota[i].ctam/2;
      if (atraparGota  && gota[i].activaGota) {
        vidas--;
        gota[i].activaGota = false;
      }
    }
  }
   void detectarBotones() {
    if (btDer.botonPresionado(340,540, 430, 50) && estado == btDer.act) {
      estado  = btDer.prox;
    }
  }
}
