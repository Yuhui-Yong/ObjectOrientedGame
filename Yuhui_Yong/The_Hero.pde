class Hero1{
  
  void display() {
    rectMode(CENTER); // To place things in the center
    noStroke(); // noStroke
    fill(255, 203, 147); // Skin color
    square(width/2, 850, 20); // Face
    fill(144, 82, 19); // brown
    rect(width/2, 940, 25, 10); // Shoe
    fill(36, 41, 147); // blue
    rect(width/2, 917, 25, 41); // Lower body
    fill(25, 98, 28); // Green
    rect(width/2, 879, 25, 38); // Upper body
    fill(25, 98, 28); // Green
    rect(483, 882, 8, 43); // Left arm
    rect(517, 882, 8, 43); // Right arm
    fill(255, 203, 147); // Skin color
    rect(483, 907, 7, 6); // Left hand
    rect(517, 907, 7, 6); // Right hand
  }
}
