// Para iniciar el programa, darle click al botón de la flecha a la derecha, o usar el comando Ctrl + R
// Para detener el programa, simplemente presionar la tecla Esc
// Guarda cambios en Archivo > Guardar o con Ctrl + S

float ellipseX = 100; // Modificar este valor para cambiar la posición inicial del circulo en X
float ellipseSpeed = 3; // Modificar este valor cambia la velocidad de movimiento del texto
float text = 55; // Modificar este valor para cambiar la posición inicial del texto en X
float textSpeed = 3; // Modificar este valor cambia la velocidad de movimiento del texto

void setup() {
  fullScreen(); //en caso de querer que se reproduzca en ventana, reemplazar por "size(ancho en px, alto en px)"
  frameRate(60); //Establece la frecuencia de actualización del programa /p segundo.
  noCursor(); //Oculta el cursor
}

void draw() {
  background(120, 84, 120); //Establece el color del fondo en valores RGB
  
  //Foto
  PImage img; 
  img = loadImage("../assets/kiosko_lerma.jpg"); //carga la imagen, la imagen seleccionada se encuentra en el directorio mencionado en el parentesis
  image(img, width/10, -250); //Ubicación de la foto (X, Y)

  // Circulo
  fill(125, 212, 227); // Color del circulo en valores rgb
  circle(ellipseX, 170, 200); //Para mover la ubicación del circulo en Y, modificar el segundo valor
  ellipseX += ellipseSpeed;
  if (ellipseX > width-100 || ellipseX < 100) {
    ellipseSpeed *= -1; // Evita que el circulo salga de la pantalla cuando llega a los bordes
  }

  // Texto
    //Sala
  fill(255, 158, 0); //Color del texto en valores RGB
  textSize(40); //tamaño del texto
  text("Alma", text, 177); //("Nombre de la sala", variable text, ubicación Y)
  text += textSpeed;
  if (text > width-140 || text < 55) {
    textSpeed *= -1; // Evita que el texto salga de la pantalla cuando llega a los bordes
    
    //Datos de la expo
  }
  fill(255, 255, 255); //Color del texto en valores RGB
  textSize(25); //Tamaño del texto
  text("Fernando Y. Vazquez ", 1400, height-150); //("Nombre del artista", posición X, posición Y) 
  text("N/A: Ausencia en el plano fisico", 1400, height-100); //("Nombre de la exposición", posición X, posición Y) 
  text("Del 10 al 29 de septiembre de 2024", 1400, height-50); //("Periodo de la exposición", posición X, posición Y) 
}
