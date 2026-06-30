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

//Reiniciar el programa a los valores BASE
void reset() {
  if (key == 'r' || key == 'R') {
   distPosX = 600;
   distPosY = 200;
  
   TranslateX = 0;
   TranslateY = 0;
  }
}

//Grilla que cumple funcion con parametros que NO RETORNA valor
void grilla() {
  for(int anchoX = 0; anchoX < 10; anchoX++) {
    grillado(anchoX);
    AltColor = !AltColor;
  }
}
void grillado(int anchoX) {
  for(int a = 0; a < 40; a++) {
    if(AltColor) {
    fill(255);
    } else {
      fill(0);
    }
    AltColor = !AltColor;
    rect(anchoX * 40, a * 10, 40, 10);
  }
}

//Grilla que está rotada
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
