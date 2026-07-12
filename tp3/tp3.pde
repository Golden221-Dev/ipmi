//https://youtu.be/RHD_trm9-no

void setup() {
  ref = loadImage("ref.png");
  size(800, 400);
}
void draw() {
  noStroke();
  background(0);
  
//Imagen Referencia a la izquierda
  imageMode(CORNERS);
  image(ref, 0, 0, 400, 400);
  
//Random
  if (mouseAdentro(distPosX, distPosY, distRango)) {
  rng = random(-3, 3);
  } else {
    rng = 0;
  }
  
//Translate Y Rotate
  pushMatrix();
  translate(400, 0);
  grilla();
  popMatrix();
  
  pushMatrix();
  translate(480 + TranslateX + rng, 330 + TranslateY + rng);
  rotate(radians(-90));
  grilla2();
  popMatrix();
  
//Evento de teclado
  if (keyPressed) {
    reset();
  }
}

//Evento de Mouse
void mouseDragged() {  
  float mouseMovX = mouseX - pmouseX;
  float mouseMovY = mouseY - pmouseY;
  if (mouseAdentro(distPosX, distPosY, distRango) == true) {
    distPosX += mouseMovX;
    distPosY += mouseMovY;
    TranslateX += mouseMovX;
    TranslateY += mouseMovY;
  }
}
