class Hero1{ // This is the MainHero.
  
  PVector heroPos;
  PVector heroVel;
  PVector gravy;
  float X; // location.
  float Y; // location.
  
  Hero1(float startX, float startY){
  X = startX; // for constructor.
  Y = startY; // for constructor.
  }
  
  void display() {
    pushMatrix(); // I don't think I have to use this for my game since there is no such things that push things out, but just in case.
    // For making only the Hero move, if I don't use it not only the Hero but everything will be moving because they are also influnced by translate.
    translate(X, Y); // This is like Relative coordinates and make everything to be stick together.
    rectMode(CENTER); // To place things in the center.
    noStroke(); // noStroke.
    fill(255, 203, 147); // Skin color.
    square(0, 0, 20); // Face and the start point of this Hero character.
    fill(0); // Black.
    rect(0, -7, 20, 7); // Hair.
    rect(-10, 0, 3, 20); // Side Hair.
    rect(10, 0, 3, 20); // Side Hair.
    fill(144, 82, 19); // Brown.
    rect(0, 93, 25, 10); // Shoe.
    fill(36, 41, 147); // Blue.
    rect(0, 68, 25, 41); // Lower body.
    fill(25, 98, 28); // Green.
    rect(0, 29, 25, 38); // Upper body.
    fill(25, 98, 28); // Green.
    rect(-17, 31.5, 9, 43); // Left arm.
    rect(17, 31.5, 9, 43); // Right arm.
    fill(255, 203, 147); // Skin color.
    rect(-17, 56, 7, 6); // Left hand.
    rect(17, 56, 7, 6); // Right hand.
    popMatrix(); // End Matrix.
  }
}
