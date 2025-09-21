class Country {
  // KLASSE FOR LANDENAVNE + FLAG
  String name;
  int x;
  int y;
  PImage flag;

  Country (String name, int x, int y,String flagPath) {
    // CONSTRUCTER SÅ COUNTRY KAN BRUGES I SETUP
    this.name=name;
    this.x=x;
    this.y=y;
    flag=loadImage(flagPath);
    flag.resize(100, 50);
  }

  void teamLabel() {
    // PRINTER HOLDNAVNE OG HOLDFLAG
    image(flag, x-135, y-38);
    PFont teamFont;
    teamFont = createFont("Arial", 25);
    fill(0);
    textFont(teamFont);
    textSize(30);
    text(name, x, y);
  }
}
