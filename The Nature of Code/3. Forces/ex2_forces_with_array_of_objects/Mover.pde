class Mover {
 PVector wind, gravity, loc, vel, acc;
 float size, mass;
 color c;
 
 Mover(float m, float x, float y) {
   loc = new PVector(x, y);
   vel = new PVector(0,0);
   acc = new PVector(0,0);
   wind = new PVector(0.01,0);
   gravity = new PVector(0,0.1);
   size = m*10;
   mass = m;
   c = color(random(255),random(255),random(255));
 }
 
 void update() {
   vel.add(acc);
   loc.add(vel);
   acc.mult(0);
 }
 
 void applyForce(PVector force) {
  PVector f = PVector.div(force,mass);
  acc.add(f);
 }
 
 void checkEdges() {
    if (loc.x > width) {
      loc.x = width;
      vel.x *= -1;
    } else if (loc.x < 0) {
      vel.x *= -1;
      loc.x = 0;
    }
    
    if (loc.y > height) {
      vel.y *= -1;
      loc.y = height;
    }
 }
 
 void display() {
   stroke(c);
   fill(c, 40);
   ellipse(loc.x,loc.y,size,size);
 }
}
