PImage EN;
PImage KAIMAN;
PImage KASUKABE;
PImage NIKAIDO;
PImage SHIN;
PImage NOI;
PImage dirtybg;
PImage magicbg;
PImage hellbg;
PImage HOLE;
PImage MAGICWORLD;
PImage HELL;
PImage startbg;
PImage dorohedoroLOGO;

float LOGOX1 = 50;
float LOGOY1 = 200;
float LOGOX2 = 250;
float LOGOY2 = 300;

int activador = 0;
float cronometro = 0;
int posX = 0;
int posY = 0;
float dirtybgOpacity = 0;
float holeOpacity = 0;
float textSpaceOpacity1 = 0;
float textOpacity1 = 0;
float kaimanOpacity = 0;

void setup () { 
  EN = loadImage("EN.png");
  KAIMAN = loadImage("KAIMAN.png");
  KASUKABE = loadImage("KASUKABE.png");
  NIKAIDO = loadImage("NIKAIDO.png");
  SHIN = loadImage("SHIN.png");
  NOI = loadImage("NOI.png");
  dirtybg = loadImage("dirtybg.jpg");
  magicbg = loadImage("magicbg.jpg");
  hellbg = loadImage("hellbg.jpg");
  HOLE = loadImage("HOLE.png");
  MAGICWORLD = loadImage("MAGICWORLD.jpg");
  HELL = loadImage("HELL.png");
  startbg = loadImage("dorohedoroBG.jpg");
  dorohedoroLOGO = loadImage("Dorohedoro_logo.png");
  
  size(640,480); 
}
void draw () {
  //donde todo empieza
  tint(255, 255);
  image(startbg, 0, 0);
  imageMode(CORNERS);
  image(dorohedoroLOGO, LOGOX1, LOGOY1, LOGOX2, LOGOY2);
  if (
     mouseX > LOGOX1 && mouseX < LOGOX2 &&
     mouseY > LOGOY1 && mouseY < LOGOY2) {
       LOGOX1 = 45;
       LOGOX2 = 255;
       LOGOY1 = 195;
       LOGOY2 = 305;
       } else {
         LOGOX1 = 50;
         LOGOY1 = 200;
         LOGOX2 = 250;
         LOGOY2 = 300;
       }
  //el fondo del boton
  rectMode(CORNERS);
  noStroke();
  fill(0, 55);
  rect(LOGOX1, LOGOY1, LOGOX2, LOGOY2);
  //secuencia de imagenes a mostrar y forma.
  if (activador == 1) {
  imageMode(CORNERS);
  tint(255, dirtybgOpacity);
  image(dirtybg, 0, 0, 640, 480);
  tint(255, holeOpacity);
  image(HOLE, 120, 20, 520, 230);
  fill(0, textSpaceOpacity1);
  rect(80, 240, 560, 420);
  String holeText1 = "Hole es el hogar de los protagonistas, es un lugar donde"; 
  String holeText2 = "viven los humanos, separados de los conocidos";
  String holeText3 = "HECHICEROS, semi humanos con la capacidad de crear";
  String holeText4 = "MAGIA.";
  String holeText5 = "En hole, casi siempre llueve, no hay apenas criaturas";
  String holeText6 = "aparte de los humanos, y su mundo se contaminó de las";
  String holeText7 = "toxinas del humo de los HECHICEROS";
  fill(255, textOpacity1);
  textSize(20);
  text(holeText1, 85, 260);
  text(holeText2, 85, 285);
  text(holeText3, 85, 310);
  text(holeText4, 85, 335);
  text(holeText5, 85, 360);
  text(holeText6, 85, 385);
  text(holeText7, 85, 410);
  }
  if (dirtybgOpacity < 255 && activador == 1) {
    dirtybgOpacity = dirtybgOpacity + 25.5;
  }
  if (dirtybgOpacity == 255 && holeOpacity < 255) {
    holeOpacity = holeOpacity + 25.5;
  }
  if (holeOpacity == 255 && textSpaceOpacity1 < 105 && textOpacity1 < 255 && cronometro < 1) {
    textSpaceOpacity1 = textSpaceOpacity1 + 10.5;
    textOpacity1 = textOpacity1 + 25.5;
  }
  if (textOpacity1 >= 255 && cronometro < 469) {
    cronometro = cronometro + 1;
  }
  if (cronometro >= 469) {
    cronometro = 470;
  }
  if (cronometro >= 469 && textOpacity1 > 0 && textSpaceOpacity1 > 0) {
    textOpacity1 = textOpacity1 + -25.5;
    textSpaceOpacity1 = textSpaceOpacity1 + -10.5;
  }
  //para guiarme
  String info = "tO:" + str(textOpacity1) + "," + "tSO:" + str(textSpaceOpacity1) + "," + "crno:" + str(cronometro);
  fill(255);
  textSize(20);
  text(info, 20, 40); 
}
void mouseClicked() {
  if (LOGOX1 == 45) {
    activador = 1;
  } 
}
