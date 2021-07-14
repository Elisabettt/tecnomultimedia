/*
Tecnología Multimedial I
Comisión 1
Alumno: Ambar Elisabet Martinez Nagy
Legajo:883317/6
Docente: Jose Luis Bugiolachi
Vídeo de youtube: https://youtu.be/hAYSE6tpD9Y
*/

int cant= 15;
int anc, alt;
int ln;
void setup(){
  size(400,400);
   colorMode(HSB, width, 100, 100);
   surface.setResizable(true);
}
void draw(){
  background(0);
anc = width/cant;
alt = height/cant;
for( int a=0; a<cant; a++){
for( int b=0; b<cant; b++){
  float tono = map(a, 0, cant, 0, 400 );
  strokeWeight(ln);
  stroke(tono, 100, 100);
   line(a*anc+anc/2, b*alt+anc/2, mouseX+random(-2,50), mouseY+random(0,50));
}
     fill(255,200); 
    noStroke();
    circle(width/8, height/8,20);
    fill(255,0,0);
    text("R",width/8-3, height/8+3);
}
}
void keyPressed (){
  ln++;
}
void mousePressed() {
  if (mouseX>= width/8-10 && mouseX < width/8+10 && mouseY <=height/8+10 && mouseY >height/8-10 ) {
   ln=0;
}
}
