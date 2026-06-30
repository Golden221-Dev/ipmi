//Funcion propia con parametros que RETORNA VALOR
boolean mouseAdentro(float posX, float posY, float Rango) {
  float distancia = dist(mouseX, mouseY, posX, posY);
  return distancia < Rango;
}

float BloqX(int indiceX) {
  return indiceX * bloqueAncho;
}
float BloqY(int indiceY) {
  return indiceY * bloqueAlto;
}

void reset() {
  if (key == 'r' || key == 'R') {
   distPosX = 600;
   distPosY = 200;
  
   TranslateX = 0;
   TranslateY = 0;
  }
}

void grilla() {
  for (int fila = 0; fila < canvasAncho; fila++) {
    for (int col = 0; col < canvasAlto; col++) {
      float Bx = BloqX(fila);
      float By = BloqY(col);
      if(AltColor) {
        fill(255);
      } else {
        fill(0);
      }
      AltColor = !AltColor;
      rect(Bx, By, bloqueAncho, bloqueAlto);
    }
    AltColor = !AltColor;
  }
}

void grilla2() {
  for(int fila = 0; fila < figuraAncho; fila++) {
    for(int col = 0; col < figuraAlto; col++) {
      float Bx = BloqX(fila);
      float By = BloqY(col);
      if(AltColor) {
        fill(255);
      } else {
        fill(0);
      }
      AltColor = !AltColor;
      rect(Bx, By, bloqueAncho, bloqueAlto);
    }
    AltColor = !AltColor;
  }
}
