import processing.serial.*;

Serial puertoSerie; // Variable para la comunicación serial
String val; //Datos recibidos por el pueto serial de Arduino
int valorPotenciometro = 0; // Variable para almacenar el valor recibido


void setup() {
  size(400, 200); // Tamaño de la ventana de Processing
 puertoSerie = new Serial(this, "COM5", 9600); // Inicia la comunicación serial con Arduino
  val="0";
  
}

void draw() {
  background(255); // Fondo blanco
  fill(0); // Texto en negro
  textSize(25); // Tamaño de letra
 
  if(puertoSerie.available() > 0){
     val= puertoSerie.readString();
  }
  println("Dato recibido: " + val);// Muestra el valor del potenciómetro
  text("Valor del potenciómetro: " + val, 50, 100);
}
