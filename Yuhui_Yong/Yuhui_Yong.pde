Hero1 hero1; // declare variable
Hero2 hero2; // declare variable
Hero3 hero3; // declare variable
boolean button = false; // This is for hero2
PImage photo;
PImage photo1;
PImage photo2;
PImage photo3;


void setup(){
  hero1 = new Hero1(width/2, 648); // initilize the MainHero and strat with the center of the window on the ground
  hero2 = new Hero2(); // initilize defense Hero
  hero3 = new Hero3(); // initilize attacking Hero
  size(1000, 800); // The window size that I wanna go for
  //background(240); // A little bit of grey background
  //noStroke();
  //fill(77, 90, 75); // Mixed with Green and Grey
  //rect(0, 745, 1000, 900); // Ground
  // I have to move this into draw(), so that when the Hero moves the shadow will disapear.
  photo = loadImage("Meteor Rotated1.png"); // Red Meteor
  photo1 = loadImage("Meteor Rotated2.png"); // Blue Meteor
  photo2 = loadImage("Rock1.png"); // Rock1
  photo3 = loadImage("Rock2.png"); // Rock2
}

void draw(){
  background(240); // A little bit of grey background
  noStroke();
  fill(77, 90, 75); // Mixed with Green and Grey
  rect(width/2, 800, 1000, 110); // Ground
  image(photo, width/2, height/2, 100, 100);
  image(photo1, 700, 500, 100, 100);
  image(photo2, 300, 100, 100, 100);
  image(photo3, 900, 700, 100, 100);
  hero1.display();
  
  if (button) {
    hero2.display();
  }
  
  //hero3.display();
  
  if(keyPressed) { // To make the Hero move when players press a certain key. This is for only left and right
    if(keyCode == RIGHT) {
    hero1.X += 1; // move to right
  } else if(keyCode == LEFT) {
    hero1.X -= 1; // move to left
  }
}
    if(keyPressed) {
      if(key == 'a') {
        button = true;
      }
    }
}
