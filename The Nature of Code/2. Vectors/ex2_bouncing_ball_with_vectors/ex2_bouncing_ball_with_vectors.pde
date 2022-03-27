/*
  Exercise 2 - Bouncing Ball with Vectors
*/

PVector location;
PVector velocity;

void setup() {
  size(640,360);
  location = new PVector(100, 100);
  velocity = new PVector(1,3.3);
}

void draw() {
  background(0);
  
  location.add(velocity);
  
  if(location.x > width || location.x < 0) {
    velocity.x *= -1;
  } else if (location.y > height || location.y < 0) {
    velocity.y *= -1;
  } 
  
  fill(255);
  noStroke();
  ellipse(location.x, location.y, 30, 30);
}
