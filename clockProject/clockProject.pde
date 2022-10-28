int second, minute, hour;
int clockDiameter, clockCenterX, clockCenterY, centerDotDiameter;
int hourIntervalL;
int sAngle,mAngle,hAngle;
int secHandL,minHandL,hourHandL;

void setup(){
  size (600,900);
  background(0);
  second=second();
  minute=minute();
  hour=hour();
  frameRate(30);
  clockDiameter=130;
  clockCenterX=width/2;
  clockCenterY=height/3;
  centerDotDiameter=2;
  hourIntervalL=15;
  sAngle=0;
  mAngle=0;
  hAngle=0;
  secHandL=50;
}

void draw(){
  updateTime();
  sAngle=((second%60)*5+270)%360;
  clockPendulum();
  clockBody();
  clockFace();
  drawHand();

  println(second,minute,hour);
  println(sAngle);
}

void clockFace(){
  fill(0);
  circle(width/2,height/3,centerDotDiameter);
  strokeWeight(3);
  line(clockCenterX,clockCenterY+clockDiameter/2,clockCenterX,clockCenterY+clockDiameter/2-hourIntervalL);
  line(clockCenterX,clockCenterY-clockDiameter/2,clockCenterX,clockCenterY+-clockDiameter/2+hourIntervalL);
  line(clockCenterX-clockDiameter/2,clockCenterY,clockCenterX-clockDiameter/2+hourIntervalL,clockCenterY);
  line(clockCenterX+clockDiameter/2,clockCenterY,clockCenterX+clockDiameter/2-hourIntervalL,clockCenterY);
  strokeWeight(1);
  stroke(#FF292D);
  line(clockCenterX,clockCenterY,parseFloat(int(clockCenterX+cos(sAngle)*secHandL)),clockCenterY+parseFloat(int(clockCenterX+sin(sAngle)*secHandL)));
}

void clockBody(){
  stroke(0);
  strokeWeight(2);
  fill(#6A3A0B);
  square(width/2-70,height/3-70,140);
  fill(255);
  circle(width/2,height/3,clockDiameter);
  fill(#6A3A0B);
  quad(width/2-70,height/3+70,width/2+70,height/3+70,width/2+90,height*3/4,width/2-90,height*3/4);
  fill(#3E2307);
  quad(width/2-50,height/3+70,width/2+50,height/3+70,width/2+65,height*3/4-20,width/2-65,height*3/4-20);
}

void clockPendulum(){
  
}

void updateTime(){
  second=second();
  minute=minute();
  hour=hour();
}

void timeToAngle(){
  
}

void drawHand(){
  
}
