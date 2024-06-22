//https://youtu.be/33xxP29gZ4M
PImage liminal;
color bgColor;
color rect1Color;
color rect2Color;
color rect3Color;
color rect4Color;
color rect1original;
color rect2original;
color rect3original;
color rect4original;
int grosordelineaoriginal = 1;
//rect1
int altor1 = 380;
int espacioentrelineas = 10;
int x = 561;  
int y = 5;   
int ancho = 100;  
//rect2
int x2 = 421;
int y2 = 139;
int ancho2 = 370;
int alto2 = 115;
//rect3
int x3 = 460; 
int y3 = 31;  
int ancho3 = 100;  
int alto3 = 330;  
//rect4
int x4 = 662; 
int y4 = 31;  
int ancho4 = 100;  
int alto4 = 330;  
boolean resetRequested = false;

void setup() {
  size(800, 400);
  liminal = loadImage("tp3processing.jpg");  
  resetColors();
}

void draw() {
  background(bgColor); 
  println(mouseX, mouseY);
  image(liminal, 0, 0, 400, 400);
  dibujarrectangulos(x, y, ancho, altor1, espacioentrelineas, grosordelineaoriginal, rect1Color);
  dibujarrectanguloHorizontal(x2, y2, ancho2, alto2, espacioentrelineas, grosordelineaoriginal, rect2Color);
  dibujarrectangulos(x3, y3, ancho3, alto3, espacioentrelineas, grosordelineaoriginal, rect3Color);
  dibujarrectangulos(x4, y4, ancho4, alto4, espacioentrelineas, grosordelineaoriginal, rect4Color); 
  botondereinicio();
  boolean sobreRectangulo1 = mouseSobreRectangulo(x, y, ancho, altor1);  
  println("¿Mouse sobre rectángulo 1? " + sobreRectangulo1);
}
void mouseMoved() {  
  grosordelineaoriginal += 1;
  if (grosordelineaoriginal > 10) {
   grosordelineaoriginal = 1;
     if (dist(mouseX, mouseY, x + ancho/2, y + altor1/2) < 100) {
    rect1Color = color(random(255), random(255), random(255));
  }
  if (dist(mouseX, mouseY, x2 + ancho2/2, y2 + alto2/2) < 100) {
    rect2Color = color(random(255), random(255), random(255));
  }
  if (dist(mouseX, mouseY, x3 + ancho3/2, y3 + alto3/2) < 100) {
    rect3Color = color(random(255), random(255), random(255));
  }
  if (dist(mouseX, mouseY, x4 + ancho4/2, y4 + alto4/2) < 100) {
    rect4Color = color(random(255), random(255), random(255));
  }
  }
}

void mouseClicked() {
  if (mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 10) {
    resetColors();
  } else {
    bgColor = color(random(255), random(255), random(255));
    rect1Color = color(random(255), random(255), random(255));
    rect2Color = color(random(255), random(255), random(255));
    rect3Color = color(random(255), random(255), random(255));
    rect4Color = color(random(255), random(255), random(255));
  }
}
