class Mover {
 PVector mouse, dir, loc, vel, acc;
 int topSpeed = 5;
 
 Mover() {
   loc = new PVector(width/2, height/2);
   vel = new PVector(0,0);
   acc = new PVector(0,0);
 }
 
 void update() {
   mouse = new PVector(mouseX, mouseY);
   dir = PVector.sub(mouse, loc);
   
   dir.normalize();
   
   dir.mult(0.5);
   
   acc = dir;
   
   vel.add(acc);
   vel.limit(topSpeed);
   loc.add(vel);
 }
 
 void display() {
   stroke(255);
   fill(255, 20);
   ellipse(loc.x,loc.y,30,30);
 }
}
