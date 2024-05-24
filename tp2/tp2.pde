int pantalla = 1;
int escalado = 0;
int escalado1 = 0;
String texto1 = "One Punch-Man es un webcómic \n de acción y comedia japonés,\n creado por el artista One e\n iniciado en 2009.";
PImage img1, img2, img3, img4;

void setup(){
  size(640, 480);
  textSize(30);
img1 = loadImage("imagen 1.jpg");
img2 = loadImage("imagen 2.jpeg");
img3 = loadImage("imagen 3.jpg");
img4 = loadImage("imagen 4.jpg");
}

void draw(){
 if (pantalla < 1 || pantalla > 5){
    pantalla = 1;
    escalado = 0;
    escalado1= 0;
   
  }
  if (escalado >= 400){
    pantalla = pantalla + 1;
  } 
   if (escalado1==400){
    pantalla = pantalla + 1;
  } 
  if(escalado1 == 350 && pantalla == 4){
  escalado1 = 350;}
  //PANTALLA 1
  if(pantalla == 1){
    escalado1 = 1;
    textSize(30);
    background(0, 255, 0);
    image(img1, 0, 0, 640, 480);
    fill(255);
    escalado = escalado + 1;
    text(texto1, 130, escalado);
    //PANTALLA2
  }else if(pantalla == 2){
    escalado = 1;
    escalado1 = escalado1+1;
    background(255, 0, 0);
    image(img2, 0, 0, 640, 480);
    fill(0);
textSize(30);
    text("El protagonista principal se llama saitama.", 25, escalado1 + 20);
    text("Es un heroe por diversion.\n Es un joven adulto que enfrenta \n una crisis existencial \nante su increíble fuerza \n debido a que no siente emociones\n durante sus batallas.", 25, escalado1 + 40);
    //PANTALLA 3
  }else if(pantalla == 3){
    escalado1 = 1;
    escalado = escalado + 1;
    background(0, 0, 255);
    image(img3, 0, 0, 640, 480);
     fill(0, 255, 0);
      text("Tatsumaki, también conocida como Tornado \n del Terror la heroína profesional de la Clase-S", 25, escalado + 20); 
    //PANTALLA 4
     }else if(pantalla == 4){
       if (escalado1 < 350){
         escalado1 = escalado1+1;}
    background(100, 150, 255);
     escalado = 1;
    image(img4, 0, 0, 640, 480);
    fill(0);
     fill(0);
    rect(520, 400, 100, 50);
    textSize(30);
    fill(0, 0, 255);
    text("El es genos, es un cyborg de 19 años \ny discípulo de Saitama.\n Él siempre esta con el objetivo \nde ser el más fuerte y lucha por la justicia.", 25, escalado1 + 20);
  
    fill(255);
    textSize(20);
    text("Reiniciar",535,420,555,420);
  }
  fill(0);
  text(pantalla, mouseX, mouseY);
}

void mouseClicked(){
  if (mouseX > 520 && mouseY > 400 && mouseY < 450 && mouseX <620 && pantalla == 4) {
    pantalla = 1;
}
}
