/*
  Exercise 1 - Bouncing Ball without Vectors
*/

float x = 100,
      y = 100,
      xspeed = 1,
      yspeed = 3.3;

void setup() {
  size(640,360);
}

void draw() {
  background(0);
  
  x += xspeed;
  y += yspeed;
  
  if(x > width || x < 0) {
    xspeed *= -1;
  } else if (y > height || y < 0) {
    yspeed *= -1;
  } 
  
  fill(255);
  noStroke();
  ellipse(x, y, 30, 30);
}
