PImage photo;
PImage photo1;
PImage photo2;
PImage photo3;

void setup(){
size(1000, 1000); // the window size that I wanna go for
background(240); // A little bit of grey background
fill(144, 80, 20); // Brown
rect(0, 950, 1000, 900); // Brown Ground
photo = loadImage("Meteor Rotated1.png"); // Red Meteor
photo1 = loadImage("Meteor Rotated2.png"); // Blue Meteor
photo2 = loadImage("Rock1.png"); // Rock1
photo3 = loadImage("Rock2.png"); // Rock2
}

void draw(){
  image(photo, width/2, height/2, 100, 100);
  image(photo1, 700, 700, 100, 100);
  image(photo2, 300, 300, 100, 100);
  image(photo3, 900, 900, 100, 100);
}
