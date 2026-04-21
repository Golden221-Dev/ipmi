PImage miImagen; 
//En lugar de usar "constant" o "let", utiliza el tipo de data para una imagen, y llama la imagen
//por nombre de archivo, tiene que ser cargado más tarde

void setup () { 
  //crea una ventana donde trabajar
  
  size(900,600); 
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
  
  image (miImagen, 20, 100, 400, 400); 
  //Dibuja la imagen en los parametros (posiciónpx1, posiciónpx2, escalapx1, escalapx2)
  
  rectMode (CENTER); 
  //Cambia el modo de dibujo de las figuras a CENTER
   
 //Puntos para medír
    stroke(0);
  point(680, 450); //Sur
  point(830, 400); //Este
  point(680, 350); //Norte
  point(530, 400); //Sur
  
  fill(255);
  //Evito que tomé el fill de otro lado
  noStroke();
  //Evito que tome el Stroke de otro lado
  square (680, 300, 400);
  //Cuadrado (Canvas) de (posiciónpx1, posiciónpx2, escalapx)
  
  strokeWeight(8); 
  //Tamaño de la figura
  stroke(255,0,0);
  //Color de la figura
  point (480, 100); 
  point (880, 100);
  point (480, 500);
  point (880, 500);
  //Puntos en (pos_px_X, pos_px_Y)
  //Puntos de referencia
  
  noStroke();
  //Soltar parametros de estilo 
  //(para no arrastrar los de la figura anterior)
  fill(0,255,0); //Verde
  //Color Relleno de la figura
  quad(480, 300, 680, 300, 680, 400, 480, 400); 
  //Rectangulo de vertices (PosX1 , PosY1, PosX2, ...)
  
  fill(0, 0, 255); //Azul
  quad(680, 300, 880, 300, 880, 500, 680, 500);
  
  fill(255, 255, 0); //Amarillo
  quad(480, 500, 480, 400, 680, 400, 780, 500);
  
  fill(0, 255, 255); //Cyan
  quad(480, 100, 480, 300, 880, 300, 880, 100);
  
  stroke(230,0,0);
  strokeWeight(5);
  fill(255, 0, 0);
  ellipse(680, 400, 300, 100);
  stroke(255,0,0);
  quad(605, 179, 530, 398, 831, 400, 755, 180);
 
  stroke(255,0,0);
  fill(150, 0, 0);
  ellipse(680, 180, 150, 50);
  noFill();
  strokeWeight(5);
  line(530, 398, 605, 179);
  line(831, 400, 755, 180);

  
  //Función texto = txt + string(valor)...
  String mousePos = "X:" + str(mouseX) + "," + "Y:" + str(mouseY);
  fill(0);
  textSize(20);
  // Lo imprimo en este lugar:
  text(mousePos, 20, 40); 
}

//No me ván a decír que mi esfuerzo manual es IA.
