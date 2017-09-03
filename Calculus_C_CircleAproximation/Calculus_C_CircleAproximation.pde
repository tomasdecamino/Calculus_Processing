float radius = 300;
int nDisk = 1;
float d = radius/nDisk;
float squareArea=0;

void setup() {
  size(1280, 720);
  smooth();
  textSize(26); 
}

void draw() {
 // frameRate(1);
  background(255);
  nDisk=(int)map(mouseX, 0, width, 1, 50);
 // nDisk++;
  d = radius/nDisk;
  pushMatrix();
  translate(width/2, height/2);
  stroke(0);
  fill(255, 140);
  strokeWeight(3);
  ellipse(0, 0, 2*radius, 2*radius);
  stroke(0,150);
  strokeWeight(3);
  noFill();
  squareArea=0;
  for (int i=0; i<nDisk; i++) {
    rect(-getSide(i, d, radius), i*d, getSide(i, d, radius)*2, d);
    rect(-getSide(i, d, radius), -(i+1)*d, getSide(i, d, radius)*2, d);
    squareArea+=getSide(i, d, radius)*d;
  }  
  popMatrix();
  fill(255);
  text("Aprox Circulo = "+squareArea*4/1000, 10, 60);
  text("Area Circulo  =  "+PI*sq(radius)/1000, 10, 90);
  text("Rectangulos = "+nDisk*2, width-300, 60);
  if (mousePressed) {
    saveFrame("frames/####.tif");
  }
}

float getSide(int n, float d, float r) {
  return sqrt(sq(r)-sq(n*d));
}