int[] data;

PFont font;

void setup() {
  size(displayWidth, displayHeight);
  // Load text file as a string
  String[] stuff = loadStrings("saoPauloBPM.txt");
  // Convert string into an array of integers using ',' as a delimiter
  data = int(split(stuff[0], ','));

  font = loadFont("HelveticaCY-Plain-48.vlw");
}

void draw() {
  background(255);
  stroke(0);
  for (int i = 0; i < data.length; i++) {
    fill(200, 30, 20);
    rect(i*20+110, 20, 20, data[i]);
  }

  fill(0);
  textAlign(CENTER, CENTER);
  textFont(font, 48);
  text("Sao Paulo Gig's BPM", width/2, height/2);
  textFont(font, 36);
  text("Saturday  | 11pm-1230am | Club venue", width/2, height/2+50);

  textAlign(LEFT);
  textFont(font, 15);
  text("Low BPM", 50, 30);
  text("High BPM", 50, 180);
  text("First Track", 110, 15);
  text("Last Track", 990, 15);
}

