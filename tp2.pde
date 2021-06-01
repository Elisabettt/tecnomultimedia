PImage fondo,titulo, fondo1,barry,barry1,fondo2,adam,vanessa,abejaicono,abejaicono2,fondo4,abeja4,abeja4p;
PFont fuente1,cata;
String frase,frase2,frase3,frase4; 
int px,px1,px3,px4,pxA4,pxB4;
int pxA,pxB;
int pos;
float tam,tamy;
float py, py2;
void setup () {
  size(600,400);
  py = 400;
  py2 = 400;
  pxA= 600;
  pxB= 10;
  px4= 400;
  pxA4= 400;
  textSize(50);
  fondo= loadImage("IMAGEN1.jpg");//fondo titulo
  titulo= loadImage("titulo1.png");
  fondo1= loadImage ("fondo png.png");
  barry= loadImage ("barry.png");
  barry1= loadImage("barry1.png");
  fuente1= loadFont ("protagonista.vlw");
  cata= loadFont ("catalina.vlw");
  textFont(fuente1);
  textFont(cata);
  frase= "Barry Benson";
  fondo2= loadImage("fondo panal.png");
  adam= loadImage("adam.png");
  frase2= "Adam Rayman";
  frase3= "Vanessa Bloome";
  vanessa= loadImage("protagonista vannesa bloome.png");
  abejaicono= loadImage("abeja icono.png");
  abejaicono2= loadImage("abeja icono - copia.png");
  fondo4= loadImage("fondopanaliconos.png");
  abeja4= loadImage("abejaiconoA.png");
  abeja4p=loadImage("abejaiconop.png");
  frase4= "MUSICA: Rupert Gregson Williams";
}
void draw() {   //pantalla 0
 println(mouseX,mouseY, pmouseX,pmouseY);
  image(fondo,0,0,width,height);
  image(titulo,px,250,width/3,height/3);//bee movie moviendose
  px++;
if(px>width){ //pantalla 1
  println(px);
  //pantalla 1
    background(225,100,10);
    image(fondo1,0,0,width,height); //imagen fondo
    image(barry,px1,230,width/3,height/3);//imagen barry moviendose
    px1= px1+3;
    image(barry1,350,5,width/3,height/3);//barry apoyado en el titulo
    textSize(50);
    text(frase,130,100);//nombre en protagonista 
}
if(px1>width){ //pantalla 2
  background(210,100,10);
  tam = tam+2;
  tam%=width;
  imageMode(CENTER);
  image(fondo2,width/2, height/2, tam, tam );
  image(adam,width/2, height/2, tam, tam);
  fill(0);
  textSize(50);
  textFont(cata);
  text(frase2,130,100);//nombre en secundario
  px3= px3+2;
}
if(px3>width){ //pantalla 3
  background(210,100,10);
  imageMode(CORNER);
  image(vanessa,0,0,width, height);
  fill(255,147,5);
  println(py);
  text(frase3,100, py);
  py -= 0.5; 
  if(py<250){
 println(pxA);
  pxA= pxA-7;
  pxB= pxB+7;
 image(abejaicono2,pxB,150,50,50);
  image(abejaicono,pxA,250,50,50);
}
if(py<10){ //pantalla 4 */
  background(139,80,25);
  println(px4);
  image(fondo4,0,0,width, height);
  image(abeja4p,0,pxA4,width, height);
  pxA4= pxA4-2;
  textSize(25);
  fill(255,245,106);
  rectMode(CENTER);
  rect(350,px4,450,50);
  fill(0);
  text(frase4,150,px4);
  px4= px4-2;
 if(pxA4<-200){
 image(abeja4,pxB4,0,width, height);
 pxB4= pxB4+2;
 }
}
}
}
//textAling
