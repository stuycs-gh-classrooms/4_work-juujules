int second, minute, hour, count;

void setup(){
  size (600,900);
  second=second();
  minute=minute();
  hour=hour();
  frameRate(30);
  count=0;
}

void draw(){
  clockFace();
  drawHand();
  updateTime();

  println(second,minute,hour);
}


void clockFace(){
  fill(#895C15);
  square(width/2-70,height/3-70,140);
  fill(255);
  circle(width/2,height/3,130);
  quad(width/2-70,height/3+70,width/2+70,height/3+70,width/2+80,height*3/4,width/2-80,height*3/4);
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
