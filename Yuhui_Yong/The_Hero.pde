class Hero1{
  
  void display() {
    rectMode(CENTER); // To place things in the center
    noStroke(); // noStroke
    fill(255, 203, 147); // Skin color
    square(width/2, 650, 20); // Face
    fill(144, 82, 19); // brown
    rect(width/2, 740, 25, 10); // Shoe
    fill(36, 41, 147); // blue
    rect(width/2, 717, 25, 41); // Lower body
    fill(25, 98, 28); // Green
    rect(width/2, 679, 25, 38); // Upper body
    fill(25, 98, 28); // Green
    rect(483, 682, 9, 43); // Left arm
    rect(517, 682, 9, 43); // Right arm
    fill(255, 203, 147); // Skin color
    rect(483, 707, 7, 6); // Left hand
    rect(517, 707, 7, 6); // Right hand
  }
}
