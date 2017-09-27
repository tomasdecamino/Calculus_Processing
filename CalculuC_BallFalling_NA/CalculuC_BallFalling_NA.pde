//tomas de camino
//falling object
float pos=0;
float g=0.0;
float v=2;


void setup(){
  size(400,800);
  background(0);
  smooth();
}

void draw(){
  stroke(255,150);
  fill(0,50);
  ellipse(width/2,pos,50,50);
  v+=g;
  pos+=v;
  if(pos>=height){
    pos=0;
    background(0);
  }
  if(frameCount%10==0){
     line(width/2+50,pos,width,pos);
  }
}