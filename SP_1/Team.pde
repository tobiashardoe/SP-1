class Country {
  String name;
  int x;
  int y;
  PImage flag;

  Country (String name, int x, int y,String flagPath) {
    this.name=name;
    this.x=x;
    this.y=y;
    flag=loadImage(flagPath);
    flag.resize(100, 50);
  }

  void teamLabel() {
    image(flag, x-135, y-38);
    PFont teamFont;
    teamFont = createFont("Arial", 25);
    fill(0);
    textFont(teamFont);
    textSize(30);
    text(name, x, y);
  }
}
