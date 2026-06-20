//Metodo nuevo, Mucho mejor

boolean blanco = true;
float ladoCanvas = 400;
float cuantosDeAncho = map(ladoCanvas, 0, 400, 0, (400 / 40));
float cuantosDeAlto = map(ladoCanvas, 0, 400, 0, (400 / 10));

void grillaDetrasV2() {
  for (int fila = 0; fila < cuantosDeAlto; fila++) {
    for (int col = 0; col < cuantosDeAncho; col++) {
      if (blanco) {
        fill(255);
      } else {
        fill(0);
      }
      blanco = !blanco;
      rect(col * ancho, fila * alto, ancho, alto);
    }
    blanco = !blanco;
  }
}
