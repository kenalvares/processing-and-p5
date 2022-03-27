/*
  Exercise 11 - Interactive Acceleration
*/

Mover[] m;

void setup() {
  size(640, 360);
  m = new Mover[70];
  for(int i=0; i<m.length; i++) {
    m[i] = new Mover(random(0.1,5),0,0);
  }
}


void draw() {
  background(0);
  for(int i=0; i<m.length; i++) {
    m[i].applyForce(m[i].wind);
    m[i].applyForce(m[i].gravity);
    m[i].checkEdges();
    m[i].update();
    m[i].display();
  }
}
