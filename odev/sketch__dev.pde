float r = 300;
float petalLen;
int resolution = 300;
float theta;
float x;
float y;
float k;
float n = 9;
float d = 15;
float c = 9;

float cFac;
float harry = 0.01;
void setup() {
  size(600,600);
  k = n / d;
}


void draw() {
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
 
  noFill();
  stroke(#FF0303);
  
  cFac = cFac + harry;
  
  c = map(cFac,0,1,0,1);
  
  if(cFac > 1) {
    harry = -0.01;
  }
  
  if(cFac < 0) {
    harry = 0.01;
  }
  beginShape();
  clear();
  for(int i = 0; i < resolution*d; i++) {
    
    theta = map(i,0,resolution,0,TWO_PI);
    
    petalLen = cos(k*theta) + c;
    x = r * petalLen * cos(theta);
    y = r * petalLen * sin(theta);
    point(x,y);
    vertex(x,y);
  }
  
  
  endShape(CLOSE);
  popMatrix();
  
 
}