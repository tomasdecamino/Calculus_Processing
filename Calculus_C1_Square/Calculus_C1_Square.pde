//@author: Tomas de Camino Beck
void setup() {
  size(800, 800);
}

void draw() {
  background(0);

  float a = map(mouseX, 0, width, 1, 500);
  float b = map(mouseY, 0, height, 1, 500);
  ;

  pushMatrix();
  translate(200, 200);
  //cuadrado lados a+b, a+b
  stroke(#DD15E8, 150);
  strokeWeight(15);
  noFill();
  rect(0, 0, a+b, a+b);
  fill(#DD15E8, 150);
  text((a+b)*(a+b), 0, -100);
  //cuadrados lados a,a
  noStroke();
  fill(#7CF5B1, 150);
  rect(0, 0, a, a);
  text(a*a, 0, -80);
  //cuadrado lados b,b
  fill(#F5112C, 150);
  rect(a, a, b, b);
  text(b*b, 0, -60);
  //dos rectangulos lados b,a
  fill(#1139F5, 150);
  rect(a, 0, b, a);
  rect(0, a, a, b);
  text(a*b, 0, -40);
  text(a*b, 0, -20);
  popMatrix();
  //areas
}