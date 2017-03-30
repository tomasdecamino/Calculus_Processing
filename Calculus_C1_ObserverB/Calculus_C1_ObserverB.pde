//Tomas de Camino Beck
//Prueba de medir velocidad instantanea
//acerca los observadores al punto

float car;
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
  car = 0;
  punto=600;
}

void draw() {
  background(0);
  //dibuja el carro
  stroke(255, 0, 0, 200);
  strokeWeight(5);
  rect(car, height/2, 100, 50);
  rect(car+25, height/2, 50, 50); 
  //acelera y mueve el carro
  speed+=acceleration;
  car+=speed;
  //llega al fin volver al inicio
  if (car>=width) {
    car=0;
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
  if (abs(car-pt1)<2) {
    obs1=car;
    time1=frameCount;
  }
  
  if(abs(car-pt2)<2){
    averageSpeed=(car-obs1)/( frameCount-time1);
  }
  textSize(20); 
  text("Velocidad="+nf(averageSpeed), 20, 20);
 // saveFrame("frames/####.jpg");
}