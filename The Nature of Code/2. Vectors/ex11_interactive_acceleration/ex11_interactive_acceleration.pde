/*
  Exercise 11 - Interactive Acceleration
*/

Mover m;

void setup() {
  size(640, 360);
  m = new Mover();
}


void draw() {
  background(0);
  m.update();
  m.display();
}
