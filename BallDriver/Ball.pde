class Ball {

  int[] cx, cy;
  int xvelocity, yvelocity;
  int radius;

  //constructor
  Ball() {
    radius = 20;
    cx = new int[10];
    cy = new int[10];
    reset();
  }//default constructor

  void reset() {
    xvelocity = 0;
    yvelocity = 0;
    for (int i = 0; i < cx.length && i < cy.length;i++){  
      cx[i] = int(random(radius, width-radius));
      cy[i] = int(random(radius, height-radius));
    }
  }//resetBall

  void display() {
    for(int i = 0; i < cx.length && i < cy.length; i++){
      circle(cx[i], cy[i], radius * 2);
    }
  }//display

  void move() {
    for (int i = 0; i < cx.length && i < cy.length; i++){
      if (cx[i] <= radius || cx[i] >= (width - 1 - radius)) {
        xvelocity*= -1;
      }//x bounce
      if (cy[i] <= radius || cy[i] >= (height - 1 - radius)) {
        yvelocity*= -1;
      }//x bounce
      cx[i]+= xvelocity;
      cy[i]+= yvelocity;
    }
  }//moveBall
  
  void changeSpeed(int x, int y) {
    xvelocity+= x;
    yvelocity+= y;
  }//changeSpeed

  boolean onBall(int x, int y) {
    for (int i = 0; i < cx.length && i < cy.length; i++){
      float d = dist(x, y, cx[i], cy[i]);
    }
    return d <= radius;
  }//onBall
  
  int getScoreValue() {
    int score = abs(xvelocity) + abs(yvelocity); 
    return score;
  }//getScoreValue
  
}//Ball
