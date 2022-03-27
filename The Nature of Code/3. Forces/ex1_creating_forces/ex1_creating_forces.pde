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
  m.applyForce(m.wind);
  m.applyForce(m.gravity);
  m.checkEdges();
  m.update();
  m.display();
}
