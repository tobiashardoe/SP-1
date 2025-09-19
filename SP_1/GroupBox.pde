class GroupBox {

  int x;
  int y;
  int boxWidth;
  int boxHeight;

  GroupBox (int x, int y, int boxWidth, int boxHeight) {

    this.x=x;
    this.y=y;
    this.boxWidth=boxWidth;
    this.boxHeight=boxHeight;
  }

  void display() {
    int space = 10;
    for ( int i = 0; i<4; i++) {
      int moveY = y+i*(boxHeight+space);
      noStroke();
      fill (255,230);
      rect(x, moveY, boxWidth, boxHeight);
    }
  }
}
