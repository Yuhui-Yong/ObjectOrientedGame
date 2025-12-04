class Obstacles{
float x; // will be replaced as PVector.
float y; // will be replaced as PVector.
float speed;
int images;

Obstacles(){
  reset(); // When it first appears, to make it move to the random loaction
}

void reset(){
  x = random(width); // Make x position randomly so, it can randomly falls down.
  y = 1; // I don't want y position to be random, I want it to be just like falls from the sky.
  speed = random(2, 6);
  images = int(random(0, 4));
}

void update(){
  y = y + speed; // This is speed.
  
  // Now, I have to make if it reaches the ground it goes back to the reset position.
  if(y > height){
    reset();
    images = int(random(0, 4));
  }
}

void display(){
  // ellipse(20, 20, 20, 20); // This is just for example, will be replaced as images that I put in here.
  imageMode(CENTER);
  image(RImages[images], x, y, 50, 50);
}
}
