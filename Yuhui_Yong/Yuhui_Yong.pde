Hero1 hero1;
Hero2 hero2;
PImage photo;
PImage photo1;
PImage photo2;
PImage photo3;

void setup(){
  hero1 = new Hero1();
  hero2 = new Hero2();
  size(1000, 1000); // The window size that I wanna go for
  background(240); // A little bit of grey background
  noStroke();
  fill(77, 90, 75); // Mixed with Green and Grey
  rect(0, 945, 1000, 900); // Ground
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
  //hero1.display();
  hero2.display();
}
