class Fondo {

  PImage [] Fondo = new PImage[25];
  int numImg;
  String [] textos;

  int numTex, tx, ty, c;


  Fondo() {

    for (int f = 0; f<25; f++) {
      Fondo[f] = loadImage("fondo"+nf(f)+".jpg");
    }
    textos= loadStrings("textos.txt");
  }
  void cargarFondo(int num, int numTex, int tx, int ty, color c_) {

    numImg= num;
    image(Fondo[numImg], 0, 0, width, height);
    c=c_; 
    fill(c_);
    textAlign(CENTER);
    text(textos[numTex], tx, ty);
  }
}
