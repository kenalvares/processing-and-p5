class Mover {
 PVector wind, gravity, loc, vel, acc;
 int topSpeed = 5, size = 40, mass = 2;
 
 Mover() {
   loc = new PVector(width/2, height/2);
   vel = new PVector(0,0);
   acc = new PVector(0,0);
   wind = new PVector(0.01,0);
   gravity = new PVector(0,0.1);
 }
 
 void update() {
   vel.add(acc);
   vel.limit(topSpeed);
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
   stroke(255);
   fill(255, 20);
   ellipse(loc.x,loc.y,size,size);
 }
}
