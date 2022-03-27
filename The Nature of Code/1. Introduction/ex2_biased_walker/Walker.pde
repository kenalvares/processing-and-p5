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
  float num = random(1);
  
    if(num < 0.2) {
      y--; 
    } else if(num < 0.4) {
      y++;
    } else if(num<0.6) {
      x--;
    } else {
      x++;
    }
  }
}
