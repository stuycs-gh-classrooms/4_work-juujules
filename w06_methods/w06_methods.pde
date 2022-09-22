void setup(){
  size(100,100);
  makeLogo();
}

void makeLogo() {
  int w=width/2-1;
  int h=height/2-1;
  background(255);
  stroke(0);
  quad(0,0,0,height-1,width-1,height-1,width-1,0);
  line(0,0,width-1,height-1);
  fill(0);
  quad(width/7.5,height/7.5,width/7.5,height/2.5,width/2.5,height/2.5,width/2.5,height/7.5);
  quad(width-width/7.5,height-height/7.5,width-width/7.5,height-height/2.5,width-width/2.5,height-height/2.5,width-width/2.5,height-height/7.5);
  fill(255);
  quad(w,0,width,h,w,height,0,h);
  fill(0);
  ellipse(w,h,w,h);
  fill(255);
  ellipse(w,h,width/4-1,height/4-1);
  line(w-width/10,h+height/10,w+width/10,h-height/10);
  fill(0);
  triangle(w-width/33,h+height/33,w-width/10,h+height/33,w-width/33,h+height/10);
  triangle(w+width/33,h-height/33,w+width/10,h-height/33,w+width/33,h-height/10);
}
