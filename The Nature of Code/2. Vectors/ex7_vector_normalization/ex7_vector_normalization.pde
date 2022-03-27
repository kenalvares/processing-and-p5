/*
  Exercise 7 - Vector Normalization
*/

PVector mouse;
PVector center;

void setup() {
  size(640,360);
  center = new PVector(width/2, height/2);
}

void draw() {
  background(0);
  mouse = new PVector(mouseX, mouseY);
  
  mouse.sub(center);
  mouse.normalize();
  mouse.mult(50);
  
  translate(center.x, center.y);
  stroke(255);
  strokeWeight(5);
  line(0, 0, mouse.x, mouse.y);
}
