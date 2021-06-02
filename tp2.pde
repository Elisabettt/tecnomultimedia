PImage fondo,titulo, fondo1,barry,barry1,fondo2,adam,vanessa,abejaicono,abejaicono2,fondo4,abeja4,abeja4p,fondo5;
PFont fuente1,cata;
String frase,frase2,frase3,frase4,frase5,frase55,frase555; 
int px,px1,pxA1,px3,px4,pxA4,pxB4,px5,px55,px555;
int pxA,pxB,ab;
int pos;
int dir,dir1;
float tam,tamy,tam1;
float py, py2;
float pxA5;
void setup () {
  size(600,400);
  frameRate(120);
  ab=350;
  py = 450;
  py2 = 400;
  pxA= 600;
  pxA1= 400;
  pxB= 10;
  px4= 400;
  pxA4= 400;
  px55=50;
  px555= 100;
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
  fondo5= loadImage("p5.jpg");
  frase5= "DIRECTOR:";
  frase55= "Simon J.Smith";
  frase555 = "Steve Hickner ";
}
void draw() {  //pantalla 0
 println(mouseX,mouseY, pmouseX,pmouseY);
  image(fondo,0,0,width,height);
  image(titulo,px,250,width/3,height/3);//bee movie moviendose
  px++;
if(px>width ){ //pantalla 1
  println(px);
  //pantalla 1
    background(225,100,10);
    image(fondo1,0,0,width,height); //imagen fondo
    image(barry1,pxA1,8,width/3,height/3);//barry apoyado en el titulo
    pxA1= pxA1-3;
    textSize(50);
    text(frase,130,100);//nombre en protagonista 
}
   if(pxA1<350 ){ 
    pxA1= ab;
    image(barry,px1,230,width/3,height/3);//imagen barry moviendose
    px1= px1+3;
  }
if(px1>width){ //pantalla 2
  background(210,100,10);
  tam = tam+3;
  imageMode(CENTER);
  image(fondo2,width/2, height/2, tam, tam );
  image(adam,width/2, height/2, tam1, tam1);
  tam1 = tam1+2;
  fill(118,69,23);
  textSize(50);
  textFont(cata);
  text(frase2,130,px3);//nombre en secundario
  px3= px3+2;
   if(px3>350 ){ 
    px3= ab;
}
if(tam1>width){   //pantalla 3
  imageMode(CORNER);
  image(vanessa,0,0,width, height);
  fill(255,147,5);
  text(frase3,100, py);
  py= py-3;
  if(py<250){
 println(pxA);
 image(abejaicono,pxA,50,50,50);
  image(abejaicono2,pxB,100,50,50);
 image(abejaicono,pxA,200,50,50);
 image(abejaicono2,pxB,250,50,50);
  pxA= pxA-8;
  pxB= pxB+8;
   
}
 if(py<0|| pxA4<-200){  //pantalla 4 
  background(139,80,25);
  float alpha= map(px4,400,0,255,0);
  println(px4);
  image(fondo4,0,0,width, height);
  image(abeja4p,0,pxA4,width, height);
  pxA4= pxA4-3;
  textSize(25);
  fill(255,245,106);
  rectMode(CENTER);
  rect(330,px4,500,80);
  fill(0,alpha);
  textAlign(LEFT);
  text(frase4,100,px4);
  px4= px4-3;{
   dir= dir *-1; }
 image(abeja4,pxB4,0,width, height);
 pxB4= pxB4+3; 
  }
 if(px4<-250){  //pantalla 5
   image(fondo5,0,0,width, height);
   textSize(25);
   textAlign(CENTER);
   float alpha= map(px55,0,350,350,0);
   fill(px55,0,0,alpha);
   text(frase5,250,px5);
   text(frase55,280,px55);
   text(frase555,280,px555);
   px5= px5+3; 
   px55= px55+3; 
   px555= px555+3;
    frameRate(50);
   image(abeja4p,random(-width/2), random(-height/3),width, height);
   image(abeja4p,random(width/4), random(height/2),width, height);
   image(abeja4p,random(-width/7), random(height/4),width, height);
   
}
}
}
}
