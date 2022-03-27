float index=1;
void recur(float x, float y, float len) {
  stroke(random(255),random(255),random(255));
  strokeWeight(10);
  if(len>=20) {
    rotate(cos(len));
    line(x, y, x+len, y);
    line(x, y, x-len, y);
    line(x, y, x, y+len);
    line(x, y, x, y-len);
    recur(x, y, len*0.99);
  }
}

void setup() {
  size(800,800);
}

void draw() {
  index+=50;
  background(0);
  translate(width/2,width/2);
  recur(0, 0, index);
}
