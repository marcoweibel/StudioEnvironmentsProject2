//Data Visualization for DJ Sets

Table table = loadTable("LionsClub.csv", "header");

void setup() {

  size(displayWidth, displayHeight);
  smooth();

  int val1 = table.getInt(1, 2);      // val now has the value 235
    println(val1);
}

void draw () {
}

