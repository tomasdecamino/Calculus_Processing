//Tomas de Camino Beck
//funciones crecimiento

float n=1;
int pos=0;

void setup(){
  size(800,800);
  background(0);
}

void draw(){
  stroke(random(255),random(255),random(255),250);
  strokeWeight(3);
  line(pos,height,pos,height-n);
  n = newPopulation(n);
  pos=(pos+1)%width;
  
}

//funcion de crecimiento
//jugar con ella
float newPopulation(float oldPopulation){
  return oldPopulation*1.01;
}