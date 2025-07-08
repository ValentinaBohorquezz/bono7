PImage img;
int index = 0;
int totalEventos = 3; 

void setup() {
  size(1000, 1000);
  loadImageEvent(index); 
}

void draw() {
  if (img != null) {
    image(img, 0, 0, width, height);
  }
}

void mousePressed() {
  index++;
  if (index > totalEventos) {
    index = 0;
  }
  loadImageEvent(index);
  println("Index actual: " + index);
}

void loadImageEvent(int i) {
  switch(i) {
    case 0:
      println("Evento 0: Inicio");
      img = loadImage("blancanieves_inicio.jpg");
      break;
    case 1:
      println("Evento 1: Clímax");
      img = loadImage("blancanieves_nudo.jpg");
      break;
    case 2:
      println("Evento 2: Desenlace");
      img = loadImage("blancanieves_final.jpg");
      break;
    case 3:
      println("Evento 3: Final");
      img = loadImage("blancanieves.jpg");
      break;
  }
}
