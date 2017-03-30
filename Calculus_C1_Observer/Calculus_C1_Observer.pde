//Tomas de Camino Beck
//Prueba de medir velocidad instantanea
//cambiar acceleration=0 y initSeed>0 
//para velocidad constante

PVector car;

float initSpeed=1;
float acceleration=0.01;

//velocidad del automovil
float speed = initSpeed;

//observador
float  obs1;
long time1;
float averageSpeed=0;

void setup() {
  size(800, 200);
  car = new PVector(0, height/2, 0);
}

void draw() {
  background(0);
  //dibuja el carro
  stroke(255, 0, 0, 200);
  strokeWeight(5);
  rect(car.x, car.y, 100, 50);
  rect(car.x+25, car.y, 50, 50); 
  //acelera y mueve el carro
  speed+=acceleration;
  car.add(speed, 0, 0);
  //llega al fin volver al inicio
  if (car.x>=width) {
    car.x=0;
    speed=initSpeed;
    time1=frameCount;
  }
  //observador 1 movil
  line(mouseX, 0, mouseX, height);

  //calcula velocidad
  if (abs(car.x-mouseX)<5) {
    averageSpeed=(car.x)/( frameCount-time1);
  }
  text("Velocidad="+nf(averageSpeed), 20, 20);
}