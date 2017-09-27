//tomas de camino
//falling object
float pos=0;
float g=0.05;
float v=0;
int t=0;


void setup() {
  size(400, 800);
  background(255);
}

void draw() {
 // background(255);
  stroke(0);
  fill(255);
  ellipse(width/2, pos, 50, 50);
  v+=g;
  pos+=v;
  t++;
  if (keyPressed) {
    pos=0;
    v=0;
    t=0;
    background(255);
  }
  if (t%10==0) {
    ellipse(width/2, pos, 50, 50);
    line(width/2+50, pos, width, pos);
    fill(0);
    text("h="+pos+"  t="+t, 20, pos);
  }
}