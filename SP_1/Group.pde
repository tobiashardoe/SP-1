class Group {
  // GRUPPE KLASSE
  int x;
  int y;
  int boxWidth;
  int boxHeight;
  color sideColor;

  Group (int x, int y, int boxWidth, int boxHeight, color sideColor) {
    // CONSTRUCTER SÅ VÆRDIER KAN BRUGES "GROUP" KAN BRUGES I SETUP
    this.x=x;
    this.y=y;
    this.boxWidth=boxWidth;
    this.boxHeight=boxHeight;
    this.sideColor=sideColor;
  }

  void display() {
    // METODE FOR AT TEGNE KASSER
    int space = 10;
    for ( int i = 0; i<4; i++) {
      int moveY = y+i*(boxHeight+space);
      noStroke();
      fill (255, 230);
      rect(x, moveY, boxWidth, boxHeight);

      int boxW = 15;
      fill(sideColor);
      rect(x-boxW, moveY, boxW, boxHeight);
      rect(x+boxWidth, moveY, boxW, boxHeight);
    }
  }
}
