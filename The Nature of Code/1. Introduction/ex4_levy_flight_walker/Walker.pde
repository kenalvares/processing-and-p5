class Walker {
 int x, y;
 
 Walker() {
  x = width/2;
  y = height/2;
 }
 
 void display() {
   stroke(0);
   point(x,y);
 }
 
 void step() {
  float r = random(1), xstep, ystep;
  if (r < 0.01) {
    xstep = random(-100,100);
    ystep = random(-100,100);
  } else {
    xstep = random(-1,1);
    ystep = random(-1,1);
  }
  
  x += xstep;
  y += ystep;
 }
}
