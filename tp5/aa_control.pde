class Control {
  Cero cero;
  Manos m;
  Fondo f;

  int cant=6;
  int posX, posY, ancho, alto;
  int estado;

  Cero[] Cero= new Cero[6];

  Control( ) {
    m= new Manos(width/2, height-100, 50);
    f = new Fondo();
    cero= new Cero();
    
    for (int i=0; i<11; i++) {
      //Cero[i]= new Cero (width, height);  //declaro por array los new del material//
    }
  //  Cero[1]= new Cero(width, height);
    // cero= new Cero(50, -50, 50, 100, 2);
  }
  void iniciar() {
    if (estado==0) {
      f.cargarFondoI();
    }
    if (estado==1) {
      background(200);
      m.dibujarPj();
     // cero.dibujarCero();
   //   cero.movCero();
     //  cero1.dibujarCero();
    //  cero1.movCero();
      
      }
      if (estado==1    ) {
        // estado=2; //ganar :)
        //  f.cargarFondoG();
      }
      if (estado==1  ) {
        //  estado=3; //perder :C
        // f.cargarFondoP();
      }
    }
 
    void tecla(int tecla) {
      if (estado== 0 && tecla==ENTER) {
        estado= 1;
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
}




  /*void moverManos(int tecla_) {
   int tecla = tecla_;
   if (tecla==RIGHT) {
   m.moverDerecha();
   }
   if (tecla==LEFT) {
   m.moverIzquierda();
   }
   }*/
