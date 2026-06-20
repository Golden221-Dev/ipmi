//https://youtu.be/t7KBqmXw2VI

PImage ref;

float GrMovX = 0;
float GrMovY = 0;
float GrX1 = 480;
float GrX2 = 720;
float GrY1 = 90;
float GrY2 = 330;

int ancho = 40;
int alto = 10;

void setup() {
  ref = loadImage("ref.png");
  size(800, 400);
}
void draw() {
  imageMode(CORNERS);
  image(ref, 0, 0, 400, 400);
  pushMatrix();
  translate(400, 0);
  grillaDetrasV2();
  popMatrix();
  pushMatrix();
  translate(GrMovX, GrMovY);
  grillaDelante();
  popMatrix();
  if (keyPressed) { //Ejemplo romado de la biblioteca de processing "key"
    if (key == 'r' || key == 'R') { 
      GrX1 = 480;
      GrX2 = 720;
      GrY1 = 90;
      GrY2 = 330;
      GrMovX = 0;
      GrMovY = 0;
    }
  }
}

void mouseDragged() {
  if (mouseAdentro() == true) {
    GrX1 = GrX1 + (mouseX - pmouseX); 
    GrX2 = GrX2 + (mouseX - pmouseX);
    GrY1 = GrY1 + (mouseY - pmouseY);
    GrY2 = GrY2 + (mouseY - pmouseY);
    GrMovX = GrMovX + (mouseX - pmouseX);
    GrMovY = GrMovY + (mouseY - pmouseY);
  }
}
