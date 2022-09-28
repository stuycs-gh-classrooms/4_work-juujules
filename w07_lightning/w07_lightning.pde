void setup() {
size(500,500);
background(0);
drawLightning(75,0,20);
drawLightning(150,10,40);
drawLightning(225,100,60);
drawLightning(300,150,75);
drawLightning(375,250,50);
}

void drawLightning(int x, int y, int numParts){
  stroke(#FFE91A);
  strokeWeight(3);
  int z=(height-y)/numParts;
  float nextx,nexty;
  while(y<500){
    nextx=random(x-25,x+25);
    nexty=y+z;
    line(x,y,int(nextx),int(nexty));
    x=int(nextx);
    y=int(nexty);
  }
}
