String [][] groups = {
  // HOLDNAVNE
  {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
  {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
  {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
  {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"}
};

Country[][] countries = new Country [groups.length][];
// HOLD INDLÆSER

String [][] flagPaths = {
  // HOLD FLAG
  {"Russia.png", "SaudiArabia.png", "Egypt.png", "Uruguay.png"},
  {"Portugal.png", "Spain.png", "Morocco.png", "Iran.png"},
  {"France.png", "Australia.png", "Peru.png", "Denmark.png"},
  {"Argentina.png", "Iceland.png", "Croatia.png", "Nigeria.png"}
};

void setup() {
  size(1100, 600);
  background(#140B64);
  // GRUPPE KASSER
  Group groupA = new Group (50, 50, 475, 50, color(#29B0E3));
  groupA.display();
  addGroupLabel("GROUP A", 225, 40);
  Group groupB = new Group (50, 350, 475, 50, color(255, 255, 0));
  groupB.display();
  addGroupLabel("GROUP B", 225, 340);
  Group groupC= new Group (600, 50, 475, 50, color(#29B0E3));
  groupC.display();
  addGroupLabel("GROUP C", 775, 40);
  Group groupD = new Group (600, 350, 475, 50, color(255, 255, 0));
  groupD.display();
  addGroupLabel("GROUP D", 775, 340);
  makeLine();

  // INDLÆSER HOLDNAVN + FLAG
  for (int i = 0; i < groups.length; i++) {
    countries[i]= new Country [groups[i].length];
    int x;
    int y;
    if (i<2) {
      // SORTERING PÅ X-AKSE
      x=170;
    } else {
      x = 720;
    }
    if (i%2==0) {
      // MODULUS FOR AT SORTERE NED PÅ Y-AKSE
      y=100;
    } else {
      y=400;
    }
    for (int j = 0; j < groups[i].length; j++) {
      countries[i][j] = new Country (groups[i][j], x, y+j*60-12, flagPaths[i][j]);
      countries[i][j].teamLabel();
    }
  }
}

void addGroupLabel(String label, int x, int y) {
  // METODE FOR AT SKRIVE HOLDNAVNE
  if ( y < 50) {
    fill(#0FA4D8);
  } else {
    fill(255, 255, 0);
  }
  textSize(24);
  PFont groupFont;
  groupFont = createFont("Impact", 25, true);
  textFont(groupFont);
  text(label, x, y);
}
void makeLine() {
  // LINJE I MIDTEN
  stroke(255);
  strokeWeight(5);
  line(width/2+10, 0, width/2+10, height);
}
