void Inicio() {
  fondoPantalla();
  //Logo y Boton
  imageMode(CORNERS);
  image(dorohedoroLOGO, LogoX, LogoY, LogoX + SizeX, LogoY + SizeY);
  //el fondo del boton
  rectMode(CORNERS);
  noStroke();
  fill(0, 55);
  rect(LogoX, LogoY, LogoX + SizeX, LogoY + SizeY);
  //Condicional del Boton
  if (
    mouseX > LogoX && mouseX < (LogoX + SizeX) &&
    mouseY > LogoY && mouseY < (LogoY + SizeY)) {
      LogoX = 45;
      LogoY = 195;
      SizeX = 210;
      SizeY = 110;
      } else {
        LogoX = 50;
        LogoY = 200;
        SizeX = 200;
        SizeY = 100;
      }
}
void fondoPantalla() {
  tint(255, 255);
  if (fase == 1) {
    image(dirtybg, 0, 0);
  } else if (fase == 2) {
    image(magicbg, 0, 0);
  } else if (fase == 3) {
    image(hellbg, 0, 0);
  } else {
    image(startbg, 0, 0);
   }
}
void cajaTexto() {
  fill(0, opacidad - 80);
  rect(80, 240, 560, 420);
}
void Pantalla() {
  fondoPantalla();
  cajaTexto();
}
void opacidadAnimada() {
  if (opacidad < 255) {
    opacidad += 25.5;
  }
}
void botonReinicio() {
  fill(0, 200);
  rectMode(CENTER);
  rect(320, 240, 300, 150);
}

void PJsSetup() {
  imageMode(CENTER);
  if (cronoAnim < cronoVuelta) {
    cronoAnim += 1;
  } else if (cronoAnim == cronoVuelta) {
    cronoAnim = 0;
  }
  if (cronoAnim < 10) {
    opacidadAnim += 25.5;
  } else if (cronoAnim > cronoVuelta - 10) {
    opacidadAnim -= 25.5;
  }
  tint(255, opacidadAnim);
}
void mousePress() {
  if (cronometro > (cronoVuelta * 6) && 
      mouseX > 320 - (300 / 2) && mouseX < 320 + (300 / 2) &&
      mouseY > 240 - (150 / 2) && mouseY < 240 + (150 / 2)) {
    fase = 0;
    cronometro = 0;
    Activo = !Activo;
  }
}
