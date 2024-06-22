void dibujarrectangulos(int x, int y, int ancho, int altor, int espacioEntreLineas, int grosorDeLinea, color colorRelleno) {
  strokeWeight(grosorDeLinea);  
  fill(colorRelleno);           
  rect(x, y, ancho, altor);  
  for (int i = x; i < x + ancho; i += espacioEntreLineas) {
    for (int j = y; j < y + altor; j++) {
      point(i, j);
    }
  }
}

void dibujarrectanguloHorizontal(int x, int y, int ancho, int alto, int espacioEntreLineas, int grosorDeLinea, color colorRelleno) {
  strokeWeight(grosorDeLinea);  
  fill(colorRelleno);           
  rect(x, y, ancho, alto);  
  for (int j = y; j < y + alto; j += espacioEntreLineas) {
    for (int i = x; i < x + ancho; i++) {
      point(i, j);
    }
  }
}
void botondereinicio() {
  fill(255,0,0);  
  rect(width - 120, height - 50, 100, 40);  
  fill(0,0,255);  // Texto negro
  textAlign(CENTER, CENTER);
  text("Reset", width - 120 + 50, height - 50 + 20);
}

void resetColors() {
  bgColor = color(255);  
  rect1original = color(#1754BC);
  rect2original = color(#42086C);
  rect3original = color(#0C5662);
  rect4original = color(#1482E0);
  rect1Color = rect1original;
  rect2Color = rect2original;
  rect3Color = rect3original;
  rect4Color = rect4original;
  grosordelineaoriginal = 1;
}
boolean mouseSobreRectangulo(int x, int y, int ancho, int alto) {
  return mouseX >= x && mouseX <= x + ancho && mouseY >= y && mouseY <= y + alto;
}
