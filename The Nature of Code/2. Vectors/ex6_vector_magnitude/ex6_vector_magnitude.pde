/*
  Exercise 6 - Vector Magnitude
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
  
  float mag = mouse.mag();
  fill(255);
  rect(0, 0, mag, 10);
  
  translate(center.x, center.y);
  stroke(255);
  strokeWeight(5);
  line(0, 0, mouse.x, mouse.y);
}
