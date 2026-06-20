//Metodo viejo, no creo que sea necesario Re-Hacerlo

void grillaDelante() {
  for(int horizontal = 0; horizontal < 12; horizontal++) {
    dibujarColumna1(horizontal);
    dibujarColumna2(horizontal);
  }
}

void dibujarColumna1(int horizontal) { 
  noStroke();
  fill(0);
  for(int a=0; a < 3; a++) {
    rect((horizontal * 20) + 480, (a * 80) + 90, 10, 40);
  }
  fill(255);
  for(int b=0; b < 3; b++) { 
    rect((horizontal * 20) + 480,(b * 80) + 130, 10, 40);
  }
}

void dibujarColumna2(int horizontal) {
  noStroke();
  fill(255);
  for(int a=0; a < 3; a++) {
    rect((horizontal * 20) + 490, (a * 80) + 90, 10, 40);
  }
  fill(0);
  for(int b=0; b < 3; b++) {
    rect((horizontal * 20) + 490, (b * 80) + 130, 10, 40);
  }
}
