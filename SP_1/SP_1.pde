String [][] groups = {
  {"Russia", "Saudi Arabia", "Egypt", "Uruguay"},
  {"Portugal", "Spain", "Morocco", "Iran"},
  {"France", "Australia", "Peru", "Denmark"},
  {"Argentina", "Iceland", "Croatia", "Nigeria"}
};
PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16;
void setup() {
  size(1100, 600);
  background(#140B64);
img1 = loadImage("SP 1 FLAG\\Russia.png");
img1.resize(100,50);
img2 = loadImage("SP 1 FLAG\\SaudiArabia.png");
img2.resize(100,50);
img3 = loadImage("SP 1 FLAG\\Egypt.png");
img3.resize(100,50);
img4 = loadImage("SP 1 FLAG\\Uruguay.png");
img4.resize(100,50);
img5 = loadImage("SP 1 FLAG\\Portugal.png");
img5.resize(100,50);
img6 = loadImage("SP 1 FLAG\\Spain.png");
img6.resize(100,50);
img7 = loadImage("SP 1 FLAG\\Morocco.png");
img7.resize(100,50);
img8 = loadImage("SP 1 FLAG\\Iran.png");
img8.resize(100,50);
img9 = loadImage("SP 1 FLAG\\France.png");
img9.resize(100,50);
img10 = loadImage("SP 1 FLAG\\Australia.png");
img10.resize(100,50);
img11 = loadImage("SP 1 FLAG\\Peru.png");
img11.resize(100,50);
img12 = loadImage("SP 1 FLAG\\Denmark.png");
img12.resize(100,50);
img13 = loadImage("SP 1 FLAG\\Argentina.png");
img13.resize(100,50);
img14 = loadImage("SP 1 FLAG\\Iceland.png");
img14.resize(100,50);
img15 = loadImage("SP 1 FLAG\\Croatia.png");
img15.resize(100,50);
img16 = loadImage("SP 1 FLAG\\Nigeria.png");
img16.resize(100,50);
  makeLine();
  GroupBox groupA = new GroupBox (50, 50, 400, 50);
  groupA.display();
  addGroupLabel("GROUP A",200, 40);
  GroupBox groupB = new GroupBox (50, 350, 400, 50);
  groupB.display();
  addGroupLabel("GROUP B",200, 340);
  GroupBox groupC= new GroupBox (600, 50, 400, 50);
  groupC.display();
  addGroupLabel("GROUP C",750, 40);
  GroupBox groupD = new GroupBox (600, 350, 400, 50);
  groupD.display();
  addGroupLabel("GROUP D",750, 340);
}

void draw(){

image(img1,50,50);
image(img2,50,110);
image(img3,50,170);
image(img4,50,230);
image(img5,50,350);
image(img6,50,410);
image(img7,50,470);
image(img8,50,530);
image(img9,600,50);
image(img10,600,110);
image(img11,600,170);
image(img12,600,230);
image(img13,600,350);
image(img14,600,410);
image(img15,600,470);
image(img16,600,530);
}


void addGroupLabel(String label, int x, int y) {
  if ( y < 50) {
    fill(#0FA4D8);
  } else {
    fill(255, 255, 0);
  }
  textSize(24);
  PFont boldFont;
  boldFont = createFont("Impact", 25,true);
  textFont(boldFont);
  text(label, x, y);
  
}
void makeLine() {
  stroke(255);
  strokeWeight(5);
  line(525, 0, 525, 700);
}
