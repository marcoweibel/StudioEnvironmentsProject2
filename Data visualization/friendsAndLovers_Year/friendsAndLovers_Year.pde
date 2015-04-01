int[] data;

PFont font;

void setup() {
  size(displayWidth,displayHeight);
  // Load text file as a string
  String[] stuff = loadStrings("friendsNLoversYr.txt");
  // Convert string into an array of integers using ',' as a delimiter
  data = int(split(stuff[0],','));
  
  font = loadFont("HelveticaCY-Plain-48.vlw");
}

void draw() {
  background(255);
  stroke(0);
  for (int i = 0; i < data.length; i++) {
    fill(20,200,200);
    int j = data[i]/100;
    ellipse(i*20,height/2,j*20,j*20);
  } 
}
