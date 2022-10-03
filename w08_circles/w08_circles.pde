int movingX, movingY, radius;

void setup() {
  size(500,500);
  background(255);
  movingX=25;
  movingY=75;
  radius=25;
  stroke(0);
  fill(120,255,120);
}

void draw() {
  background(255);
  circleRow(0,width, radius,radius*2);
  circle(movingX,movingY,radius*2);
  ++movingX;
  if(movingX>width-radius && movingY==height-radius){
    movingX=25;
    movingY=75;
  }else if(movingX>width-radius){
   movingX=25;
   movingY+=radius*2;
  }
}

void circleRow(int startX, int endX, int y, int d ) {
   while (startX<=endX) {
     startX++;
     if (startX % d == 25) {
       circle(startX,y,d);
     }  
   }
}
