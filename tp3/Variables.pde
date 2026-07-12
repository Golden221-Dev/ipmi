PImage ref;
float rng;

float bloqueAncho = 40;
float bloqueAlto = 10;

boolean AltColor = true;

float ladoFondo = 400;
float ladoFigura = 240;
float canvasAncho = map(ladoFondo, 0, ladoFondo, 0, (ladoFondo / bloqueAncho));
float canvasAlto = map(ladoFondo, 0, ladoFondo, 0, (ladoFondo / bloqueAlto));
float figuraAncho = map(ladoFigura, 0, ladoFigura, 0, (ladoFigura / bloqueAncho));
float figuraAlto = map(ladoFigura, 0, ladoFigura, 0, (ladoFigura / bloqueAlto));

float distPosX = 600;
float distPosY = 200;
float distRango = 170;

float TranslateX = 0;
float TranslateY = 0;
