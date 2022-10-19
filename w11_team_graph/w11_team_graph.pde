int angle;
int dotDiameter;

int sinAmplitude;
int circRadius;
int spiralRadius;
int angularVelocity;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  spiralRadius = 100;
  angularVelocity=5;
  angle = 0;
  stroke(255);
}

void draw(){
  spiral(width/2,height*2/3,angle);
  angle++;
}

void spiral(int xOffset,int yOffset,int radius){
  int xSpiral=xOffset+;
  int ySpiral=yOffset+;
}
