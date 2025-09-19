String [][] groups = {
  {"Russia", "Saudi Arabia", "Egypt", "Uruguay"},
  {"Portugal", "Spain", "Morocco", "Iran"},
  {"France", "Australia", "Peru", "Denmark"},
  {"Argentina", "Iceland", "Croatia", "Nigeria"}
};

void setup() {
  size(1100, 700);
  GroupBox groupA = new GroupBox (50, 50, 400, 50);
  groupA.display();
  GroupBox groupB = new GroupBox (50, 400, 400, 50);
  groupB.display();
  GroupBox groupC= new GroupBox (600, 50, 400, 50);
  groupC.display();
  GroupBox groupD = new GroupBox (600, 400, 400, 50);
  groupD.display();
}
