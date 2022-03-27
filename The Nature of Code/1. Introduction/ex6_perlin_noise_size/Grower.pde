class Grower {
 float x, y, t, d;
 
 Grower() {
  x = width/2;
  y = height/2;
  t = 0;
  d = 20;
 }  
 
 void display() {
   noStroke();
   fill(255);
   ellipse(x,y,d,d);
 }
 
 void step() {
   d = map(noise(t), 0, 1, 0, height);
   t += 0.1;
 }
}
