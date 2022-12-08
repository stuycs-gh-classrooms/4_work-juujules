class Ball {

  int cx, cy;
  int xvelocity, yvelocity;
  int radius;
  color c;

  //constructor
  Ball() {
    radius = 20;
    reset();
    c = SAFE_COLOR;
  }//default constructor

  void reset() {
    xvelocity = 0;
    yvelocity = 0;
    cx = int(random(radius, width-radius));
    cy = int(random(radius, height-radius));
  }//resetBall

  void setColor(color newc) {
    c=newc;
  }

  boolean collisionCheck(Ball other) {
    float d = (this.cx-other.cx)*(this.cx-other.cx)+(this.cy-other.cy)*(this.cy-other.cy);;
    if (this != other) {
      return d<=4*this.radius;
    } else {
      return false;
    }
  }

  void display() {
    circle(cx, cy, radius * 2);
  }//display

  void move() {
    if (cx <= radius || cx >= (width - 1 - radius)) {
      xvelocity*= -1;
    }//x bounce
    if (cy <= radius || cy >= (height - 1 - radius)) {
      yvelocity*= -1;
    }//x bounce
    cx+= xvelocity;
    cy+= yvelocity;
  }//moveBall

  void changeSpeed(int x, int y) {
    xvelocity+= x;
    yvelocity+= y;
  }//changeSpeed

  boolean onBall(int x, int y) {
    float d = dist(x, y, cx, cy);
    return d <= radius;
  }//onBall

  int getScoreValue() {
    int score = abs(xvelocity) + abs(yvelocity);
    return score;
  }//getScoreValue
}//Ball
