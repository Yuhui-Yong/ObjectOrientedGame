Hero1 hero1; // declare variable.
Hero2 hero2; // declare variable.
Hero3 hero3; // declare variable.
boolean button1 = false; // This is for hero2 to appear and for hero2 to disappear.
float hero2Time = 0; // This is like the time how long the hero2 will appear. Like frame.
boolean button2 = false; // The same process as the hero2.
float hero3Time = 0; // The same process as the hero2.
// Now, I wanted players to have a cooldown so that they cannot be pressing quickly.
float dCooldown = 0; // This is for dcooldown.
float aCooldown = 0; // This is for acooldown.
// For the array
int count = 15; // porbably 15, but will fix it, depending on the situation.
Obstacles[] obstacles = new Obstacles[count]; // Array Obstacles.
int hp = 3; // This is the amout of HP you have.

//PImage photo;
//PImage photo1;
//PImage photo2;
//PImage photo3;
PImage[] RImages = new PImage[4]; // Array Images
PImage photo; // photo I will be using for Hp.
PImage photo1; // photo1 I will be using for Hp.


void setup(){
  hero1 = new Hero1(width/2, 648); // initilize the MainHero and strat with the center of the window on the ground.
  hero2 = new Hero2(); // initilize defense Hero.
  hero3 = new Hero3(); // initilize attacking Hero.
  size(1000, 800); // The window size that I wanna go for.
  for (int i = 0; i < count; i++){ // Loop i until 15 and 
    obstacles[i] = new Obstacles(); // put it into here.
  }
  //background(240); // A little bit of grey background.
  //noStroke();
  //fill(77, 90, 75); // Mixed with Green and Grey.
  //rect(0, 745, 1000, 900); // Ground.
  // I have to move this into draw(), so that when the Hero moves the shadow will disapear.
  //photo = loadImage("Meteor Rotated1.png"); // Red Meteor.
  //photo1 = loadImage("Meteor Rotated2.png"); // Blue Meteor.
  //photo2 = loadImage("Rock1.png"); // Rock1.
  //photo3 = loadImage("Rock2.png"); // Rock2.
  RImages[0] = loadImage("Meteor Rotated1.png"); // Red Meteor.
  RImages[1] = loadImage("Meteor Rotated2.png"); // Blue Meteor.
  RImages[2] = loadImage("Rock1.png"); // Rock1.
  RImages[3] = loadImage("Rock2.png"); // Rock2.
  photo = loadImage("WHP.png"); // Winning Hp.
  photo1 = loadImage("LHP.png"); // Losing Hp.
}

void draw(){
  if(dCooldown > 0){ // Here, if acooldown is bigger than 0,
      dCooldown = dCooldown - 1; // it will reduce, and the amount of frame I wanna have it for total, I will have to decide below in the keyPress section.
  }
  if(aCooldown > 0){ // The same process as the hero2.
      aCooldown = aCooldown - 1; // The same process as the hero2.
  }
  
    hero1.update(); // The vel and the gravy.
    
  background(240); // A little bit of grey background.
  noStroke();
  fill(77, 90, 75); // Mixed with Green and Grey.
  rect(width/2, 800, 1000, 110); // Ground
  //image(photo, width/2, height/2, 100, 100);
  //image(photo1, 700, 500, 100, 100);
  //image(photo2, 300, 100, 100, 100);
  //image(photo3, 900, 700, 100, 100);
  
  for(int i = 0; i < count; i++){
    obstacles[i].update(); // The position for all of the obstacles.
    obstacles[i].display(); // The shape for all of the obstacles.
  }
  
  HitBox();
  
  if(button1){ // If button is true,
    hero2.display(); // this hero2 will appear.
    hero2Time = hero2Time - 1; // This is how long it will be deleting so that hero2 will be able to disspaer afterwards.
    if(hero2Time <= 0){ // This is when heroTIme gets to zero, it will dissapear.
    button1 = false; // like this, the button will be changed it as false, so hero2 will disappear.
    //if(dCooldown > 0){ // Here, if acooldown is bigger than 0,
    //  dCooldown = dCooldown - 1; // it will reduce, and the amount of frame I wanna have it for total, I will have to decide below in the keyPress section.
    //}
    }
  }
  
  else if(button2){
    hero3.display(); // The same process as the hero2.
    hero3Time = hero3Time - 1; // The same as the hero2.
    if(hero3Time <= 0){ // The same as the hero2.
    button2 = false; // The same as the hero2.
    //if(aCooldown > 0){ // The same process as the hero2.
    //  aCooldown = aCooldown - 1; // The same process as the hero2.
    //}
    }
  }
  
  else{
    hero1.display(); // So, basically it shows hero1 when the button is false.
  }
  
  // if(keyPressed){ // To make the Hero move when players press a certain key. This is for only left and right.
    
    if(keyCode == RIGHT){
    // hero1.X += 1; // move to right.
    hero1.heroPos.x = hero1.heroPos.x + 1; // Now, I have to make this as PVector thing.
    }
      
      else if(keyCode == LEFT){
    // hero1.X -= 1; // move to left.
    hero1.heroPos.x = hero1.heroPos.x - 1; // The same.
      }
      
      if(key == 'd'){
        if(dCooldown == 0){ // Here, if dCooldown reaches at 0,
          button1 = true; // hero2 will appear but,
          button2 = false; // hero3 will not appear so that it cannot be together. It's clean.
        hero2Time = 80; // This is the total amout of time that will appear on the screen, it is 2.5 secs.
        dCooldown = 300; // Ths total amout of the fram for acooldown.
      }
    }
      if(key == 'a'){
        if(aCooldown == 0){ // The same process as the hero2.
          button2 = true; // The same process as the hero2.
          button1 = false; // Ths same process as the hero2.
        hero3Time = 80; // The same process as the hero2.
        aCooldown = 300; // The same process as the hero2.
        }
      }
      if (hp == 1){
      image(photo, 100, 700, 50, 50);
      }else image(photo1, 100, 700, 50, 50);
      if (hp == 2){
        image(photo, 100, 700, 50, 50);
      }else image(photo1, 100, 700, 50, 50);
      if (hp == 3){
        image(photo, 100, 700, 50, 50);
      }else image(photo1, 100, 700, 50, 50);
  }
      void keyPressed(){ // I made it seperately, working with keyPressed then, it wored fine finally.
      if(key == ' '){
      hero1.jump();
    }
  }
  
  //Now, here I have to make like a hitbox for hero, so it can get hit from the obstacles.
  void HitBox(){
  for (int i = 0; i < count; i++){ // Here, I have total 15 obstacles.
    
    float hx = hero1.heroPos.x; // This is heroPos.x, which is obviously x position for hero1.
    float hy = hero1.heroPos.y; // This is heroPos.y, which is obviosuly y position for hero1.
    float ox = obstacles[i].x; // Now, we need the obstacles x cooridnate as well.
    float oy = obstacles[i].y; // Also, the y cooridnate as wekk.

    boolean hitX = (ox > hx - 25) && (ox < hx + 25); // So, here, hx - 25 and hx + 25 are 25 pixels to the left of the hero's center, and 25 pixels to the right of the hero's center.
    boolean hitY = (oy > hy - 40) && (oy < hy + 40); // Also, the same function but as y cooridinate.
    // And those boolean must work when both are true.

    if (hitX && hitY){ // So, in here, if they overlap horizontally and vertically, the two objects have actually collided.
      hp = hp - 1; // and reduce hp.
      obstacles[i].reset(); // and make the obstacles that hit the hero go up again and fall.
      
      if (hp < 0) { // This is for not go to minus value.
        hp = 0;
      }
    }
  }
}
