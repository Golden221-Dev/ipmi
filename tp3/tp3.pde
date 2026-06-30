//https://youtu.be/t7KBqmXw2VI

void setup() {
  ref = loadImage("ref.png");
  size(800, 400);
}
void draw() {
  //RANDOM
  if (mouseAdentro(distPosX, distPosY, distRango)) {
  rng = random(-3, 3);
  } else {
    rng = 0;
  }
  noStroke();
  background(0);
  imageMode(CORNERS);
  image(ref, 0, 0, 400, 400);
  
  //TRANSLATE Y ROTATE
  pushMatrix();
  translate(400, 0);
  grilla();
  popMatrix();
  pushMatrix();
  translate(480 + TranslateX + rng, 330 + TranslateY + rng);
  rotate(radians(-90));
  grilla2();
  popMatrix();
  if (keyPressed) {
    reset();
  }
}
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
