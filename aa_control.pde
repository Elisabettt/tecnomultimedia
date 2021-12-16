class Control {

  Fondo fondo;
  Boton btIzq, btDer, btCentrado;
  Juego juego;

  int pantalla, estado, cant;
  int te, tx, ty, c;

  Control(int cant_) {

    cant = cant_;
    estado=0;

    juego = new Juego(5);

    fondo = new Fondo();
    btIzq = new Boton(width/4, height-100, 260, 50);
    btDer = new Boton(width/2, height-100, 289, 50);
    btCentrado = new Boton(width/2-100, height-100, 180, 50);
  }

  void dibujarAventura() {

    fondo.cargarFondo(pantalla, te, tx, ty, c);
    println(estado);
    if (estado==0) { //titulo
      btCentrado.dibujarBoton(0, 1, 0, 25);
      pantalla=22;
      btCentrado.dibujarBoton(0, 1, 0, 25);
    }
    if (estado== 1) {  //compra diario   
      fondo.cargarFondo      (0, 1, width/3, height/6, 0);
      btCentrado.dibujarBoton(1, 2, 1, 25);
    }
    if (estado== 2) {  //toma un tranvia y cuando desciende     
      fondo.cargarFondo      (1, 2, width/2, height/4, 255);
      btCentrado.dibujarBoton(2, 3, 2, 25);
    }
    if (estado== 3) {  //deja el diario en
      fondo.cargarFondo (2, 3, width/2, height/6, 0);
      btIzq.dibujarBoton(3, 4, 3, 20);
      btDer.dibujarBoton(3, 4, 4, 20);    //los dos botones te llevan a la mismo
    }
    if (estado== 4) {  //las hojas se convierten en h i y lo agarra..
      fondo.cargarFondo (17, 4, width/2, height/6, 1);
      btIzq.dibujarBoton(4, 5, 5, 15);
      btDer.dibujarBoton(4, 16, 6, 15);  // bifurcacion lo agarra un estudiante de arte
    }
    if (estado== 16) {  // est arte usa el diario para 4b
      fondo.cargarFondo (5, 6, width/3, height/6, 0);
      btIzq.dibujarBoton(16, 17, 7, 20); // 4c
      btDer.dibujarBoton(16, 18, 8, 20);  // 4d
    }
    if (estado== 17) {  // no ensuciar el piso 4c
      fondo.cargarFondo      (4, 7, width/3+100, height/6, 0);
      btCentrado.dibujarBoton(17, 6, 1, 25); //termina esta bifurcacion y va al estado 6
    }
    if (estado== 18) {  // 4d
      fondo.cargarFondo(6, 8, width/3, height/6, 0);
      btCentrado.dibujarBoton(18, 19, 1, 25); // va a 4e
    }
    if (estado== 19) {  // 4e
      fondo.cargarFondo      (7, 9, width/3, height/6, 0);
      btCentrado.dibujarBoton(19, 15, 1, 25); // va a creditos
    }
    if (estado== 5) {  //lo lee y se convierte en un diario
      fondo.cargarFondo      (3, 5, width/3+50, height/6-12, 1);
      btCentrado.dibujarBoton(5, 6, 2, 25);
    }
    if (estado== 6) {  //luego deja el diario y se convierte en
      fondo.cargarFondo (18, 10, width/3+100, height/6, 1);
      btIzq.dibujarBoton(6, 7, 9, 20);
      btDer.dibujarBoton(6, 20, 10, 20);  // va a bifurcacion
    }
    if (estado== 20) {  // 6b grulla
      fondo.cargarFondo      (16, 12, width/2, height/6, 255);
      btCentrado.dibujarBoton(20, 8, 1, 25); // va a una anciana lo ve
    }
    if (estado== 7) {  //hojas impresas
      fondo.cargarFondo      (17, 11, width/2, height/6, 0);
      btCentrado.dibujarBoton(7, 8, 2, 25);
    }
    if (estado== 8) {  //una anciana lo ve 
      fondo.cargarFondo      (8, 13, width/3+100, height/6, 0);
      btCentrado.dibujarBoton(8, 9, 1, 20);
    }
    if (estado== 9) {  //deja el diario y se convierte en
      fondo.cargarFondo (19, 15, width/3+100, height/6, 0);
      btIzq.dibujarBoton(9, 10, 9, 18);
      btDer.dibujarBoton(9, 21, 12, 18);  // va a bifurcacion 9b
    }
    if (estado== 21) {  //9b barco papel
      fondo.cargarFondo (10, 16, width/3+100, height/6, 0);
      btIzq.dibujarBoton(21, 12, 13, 20);//se lo lleva a su casa y lo usa para
      btDer.dibujarBoton(21, 22, 14, 20);// bifurcacion 9c
    }    
    if (estado== 22) {  //
      fondo.cargarFondo (20, 20, width/3+100, height/6, 255);
      btIzq.dibujarBoton(22, 23, 17, 20);//convertirlo en 9c
      btDer.dibujarBoton(22, 24, 18, 20);// ponerselo en la cabeza
    }
    if (estado== 23) {  //avion de papel va a credito
      fondo.cargarFondo      (11, 21, width/3+100, height/6, 0);
      btCentrado.dibujarBoton(23, 15, 2, 20);
    }  
    if (estado== 24) {  //sombrero va a creditos
      fondo.cargarFondo(12, 22, width/3+100, height/6, 255);
      btCentrado.dibujarBoton(24, 15, 1, 20);
    }  
    if (estado== 10) {  //hojas impresas    
      fondo.cargarFondo(17, 11, width/2, height/6, 0);
      btCentrado.dibujarBoton(10, 11, 1, 20); // de aca te lleva al  juego !!!!!!!!!!!!!!!!!!!!!!
    }
    if (estado== 12) {  //se lo lleva a su casa y lo usa para     
      fondo.cargarFondo(13, 17, width/2, height/6, 0);
      btIzq.dibujarBoton(12, 13, 15, 20);
      btDer.dibujarBoton(12, 25, 16, 20);  // va a bifurcacion
    }
    if (estado== 25) {  //fuego va a creditos
      fondo.cargarFondo(21, 19, width/2-5, height/6, 255);
      btCentrado.dibujarBoton(25, 15, 1, 25);
    } 
    if (estado== 13) {  //acelgas    
      fondo.cargarFondo(14, 18, width/3+100, height/6, 0);
      btCentrado.dibujarBoton(13, 14, 2, 20);
    }   
    if (estado== 14) {  //fin que para eso sirven los diarios   
      fondo.cargarFondo(24, 23, width/3+100, height/6, 1);
      btCentrado.dibujarBoton(14, 15, 2, 15);
    }
    if (estado== 15) {  //creditos    
      fondo.cargarFondo(23, 0, width/3, height/6, 0);
      btCentrado.dibujarBoton(15, 0, 25, 25);
    }
    if (estado==26) {
    }
  }

  void dibujarJuego() {
    if (estado==11) {
      juego.iniciar();
      juego.detectarBotones();
      juego.moverPersonaje(keyCode);
      juego.atraparDiario();
      juego.atraparGota();
      juego.atraparTrueno();
      juego.ganar();
      juego.perder();
    }
    if (juego.estadoJ==3 && estado==11) {
      if (keyCode == ENTER ) {
        estado= 12;
      }
    }
    if (juego.estadoJ==4 && estado==11) {
      if (keyCode == ENTER ) {
        juego.estadoJ= 0;
      }
    }
  }

  void detectarBotones() {
    if (btIzq.botonPresionado(width/8, height-100, 260, 50) && estado == btIzq.act) {
      estado  = btIzq.prox;
    }
    if (btDer.botonPresionado(width/2, height-100, 289, 50) && estado == btDer.act) {
      estado  = btDer.prox;
    }
    if (btCentrado.botonPresionado(width/2-100, height-100, 180, 50) && estado == btCentrado.act) {
      estado  =btCentrado.prox;
    }
  }
}
