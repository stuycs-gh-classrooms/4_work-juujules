class Land {
  int state;
  int nextState;
  int landSize;
  color landColor;
  int x, y;

  Land() {
  }

  void changeState() {
    state=nextState;
  }

  void updateNextState() {
    if (nextState==1) {
      nextState=0;
    }
    if (nextState==3) {
    }
  }

  void display() {
  }
}
