/*
  Exercise 1 - Implementing a random walker.
  
  This walker moves randomly in any of the 4 cardinal directions.
*/

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
 w.step();
 w.display();
}
