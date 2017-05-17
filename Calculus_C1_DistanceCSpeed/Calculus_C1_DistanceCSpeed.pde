//Tomas de Camino Beck
//Prueba dos carros uno con velocidad constante
//Otro con aceleracion
//acerca los observadores al punto

float car, car2;

float initSpeed=1;
float acceleration=0.009;

//velocidad del automovil
float speed= initSpeed, speed2 = initSpeed;

//tiempo
long time1;


void setup() {
  size(800, 400);
  car = 0;
  car2 = 0;
  background(0);
}

void draw() {
  //background(0);
  drawCar(car,height/5);
  drawCar(car2,4*height/5);
  //acelera y mueve el carro
  speed+=acceleration;
  car+=speed;
  car2+=speed2;
  //llega al fin volver al inicio
  if (car>=width) {
    car=car2=0;
    speed=speed2=initSpeed;
    time1=0;
    background(0);
  }

  stroke(255,100);
  if(frameCount%10==0){
    line(car,height/2-10,car,0);
    line(car2,height/2+10,car2,height);
  }
  
  //textSize(20); 
  //text("v = "+speed,10,40);
  //text("v = "+speed2,10,height-120);
  // saveFrame("frames/####.jpg");
}

void drawCar(float x, float y){
  //dibuja el carro
  pushMatrix();
  translate(x,y);
  stroke(255, 0, 0, 100);
  strokeWeight(5);
  rect(0, 0, 100, 50);
  rect(25, 0, 50, 50); 
  popMatrix();
}