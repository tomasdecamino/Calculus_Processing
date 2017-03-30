//Tomas de Camino Beck
//Prueba de medir velocidad instantanea
//acerca los observadores al punto

PVector car;
float punto;

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
  punto=600;
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
    time1=0;
  }
  //observadores
  ellipse(punto,height/2,10,10);
  
  float pt1 = punto-mouseX/4;
  float pt2 = punto+mouseX/4;
  line(pt1, 0, pt1, height);
  line(pt2, 0, pt2, height);
  

  //calcula velocidad
  if (abs(car.x-pt1)<2) {
    obs1=car.x;
    time1=frameCount;
  }
  
  if(abs(car.x-pt2)<2){
    averageSpeed=(car.x-obs1)/( frameCount-time1);
  }
  text("Velocidad="+nf(averageSpeed), 20, 20);
}