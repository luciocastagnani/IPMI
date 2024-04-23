PImage liminal;

void setup(){
size (800, 400);
liminal = loadImage("espada vikinga.jpg");
background(255);

}

void draw(){
  println(mouseX, mouseY);
image(liminal, 0, 0, 400,400);
fill(150);
stroke(150);
triangle(593,17,572,49,610,51);
rect(571,50,40,240);
stroke(0);
rect(516,286,150,20);
fill(0);
rect(578,306,25,50);
ellipse(590,355,40,25);

}
