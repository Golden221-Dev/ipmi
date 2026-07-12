void setup() {
  facuFuente = loadFont("MaturaMTScriptCapitals-48.vlw");
  fuenteEstandar = createFont("arial", 10);
  cargarImagenes();
  size(640, 480);
}
void draw() {
  textFont(fuenteEstandar);
  background(0);
  Inicio();
  if (Activo) {
    cronometro += 1;
    Pantalla();
    if (cronometro <= cronoVuelta) {
      fase = 1;
      holeImg();
      opacidadAnimada();
      holeText();
    } else if (cronometro > cronoVuelta &&
    cronometro <= (cronoVuelta * 2)) {
      kaimanImg();
      kaimanText();
    } else if (cronometro > (cronoVuelta * 2) &&
    cronometro <= (cronoVuelta * 3)) {
      nikaidoImg();
      nikaidoText();
    } else if (cronometro > (cronoVuelta * 3) &&
    cronometro <= (cronoVuelta * 4)) {
      fase = 2;
      antagonistImg();
      antagonistasText();
    } else if (cronometro > (cronoVuelta * 4) &&
    cronometro <= (cronoVuelta * 5)) {
      hellImg();
      fase = 3;
      infiernoText();
    } else if (cronometro > (cronoVuelta * 5) &&
    cronometro <= (cronoVuelta * 6)) {
      magicImg();
      fase = 2;
      conclucionText();
    } else if (cronometro > (cronoVuelta * 6)) {
      if (opacidad > 0) {
      opacidad -= 25.5;
      }
      botonReinicio();
      textoReinicio();
      mousePress();
    }
  }
}

void mouseClicked() {
  if (LogoX == 45 && fase == 0) {
    Activo = !Activo;
  }
  if (fase > 4) {
      fase = 0;
  }
}
