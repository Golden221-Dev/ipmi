PImage miImagen; 
//Variable de imagen

void setup () { 
  //crea una ventana donde trabajar
  
  size(800,400); 
  //define el tamaño de la ventana
  
  miImagen = loadImage ("miImagen.jpg"); 
  //Carga la imagen al proyecto
}

void draw () { 
  //Crea elementos visuales de "(parametros)" 
  //de acuerdo al "{contenido_cuerpo}"
  //El elemento en "capa más alta" es el elemento de linea más baja
  
  background (50); 
  //Define un fondo
  imageMode(CORNERS);
  image (miImagen, 0, 0, 400, 400); 
  //Dibuja la imagen dentro de los parametros 
  //(posiciónX1, posiciónpY1, posiciónX2, posiciónY2)
  
  rectMode (CENTER); 
  //Cambia el modo de dibujo de las figuras RECT
   
  fill(255);
  //Evito que tomé el fill de otro lado
  noStroke();
  //Evito que tome el Stroke de otro lado
  square (600, 200, 400);
  //Cuadrado (Canvas) de (posiciónpx1, posiciónpx2, escalapx)
  
  strokeWeight(8); 
  //Tamaño de la figura
  stroke(255,0,0);
  //Color de la figura
  point (400, 0); 
  point (400, 400);
  point (800, 0);
  point (800, 400);
  //Puntos en (pos_px_X, pos_px_Y)
  //Puntos de referencia
  
  noStroke();
  //Soltar parametros de estilo 
  //(para no arrastrar los de la figura anterior)
  
  fill(0, 255, 255); //Cyan
  quad(400, 0, 400, 400, 800, 400, 800, 0);
  
  fill(0,255,0); //Verde
  //Color Relleno de la figura
  quad(400, 200, 400, 300, 600, 300, 600, 200); 
  //Rectangulo de vertices (PosX1 , PosY1, PosX2, ...)
  
  fill(0, 0, 255); //Azul
  quad(600, 200, 600, 300, 800, 400, 800, 200);
  
  fill(255, 255, 0); //Amarillo
  quad(400, 300, 400, 400, 800, 400, 600, 300);
  
  fill(255, 0, 0);
  quad(450, 300, 730, 300, 650, 5, 500, 80);
  ellipse(590, 300, 280, 100);
}

//No me ván a decír que mi esfuerzo manual es IA.
