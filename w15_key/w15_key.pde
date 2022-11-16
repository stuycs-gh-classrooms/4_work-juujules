int[] xvals, yvals;
int numPoints;
int xMod, yMod;
int clear;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  xMod=0;
  yMod=0;
  clear=0;
  stroke(255) ;
}

void draw() {
  background(0);
  drawLines(xvals, yvals);
}

/*
void makeLines(int[] xs, int[] ys, int points) {
  for(int i=0;i<xs.length && i<ys.length && i<points;i++){
    xs[i]=int(random(width));
    ys[i]=int(random(height));
  }
}
*/

void drawLines(int[] xs, int[] ys) {
  for(int i=1;i<numPoints;i++){
    if (clear>i){
      stroke(0);
    } else {
      stroke(255);
    }
    line(xs[i-1],ys[i-1],xs[i],ys[i]);
  }
}

void moveLines(int[] xs, int[] ys, int xMod, int yMod){
  for (int i=0;i<numPoints;i++){
     xs[i]+=xMod;
     ys[i]+=yMod;
  }
}

void mousePressed() {
  xvals[numPoints]=mouseX;
  yvals[numPoints]=mouseY;
  numPoints++;
}

void keyPressed() {
  if (key=='c'){
   background(0); 
   clear=numPoints+1;
  }
  if (key==CODED){
    if(keyCode==UP){
      moveLines(xvals,yvals,0,-1);
    }
    if(keyCode==DOWN){
      moveLines(xvals,yvals,0,1);
    }
    if(keyCode==RIGHT){
      moveLines(xvals,yvals,1,0);
    }
    if(keyCode==LEFT){
      moveLines(xvals,yvals,-1,0);
    }
  }
}
