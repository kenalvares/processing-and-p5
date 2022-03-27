void setup() {
  //size(640, 600);
  fullScreen();
}

void draw() {
  background(255);
  drawCircle(width/2, height/2, mouseX);
}

void drawCircle(float x, float y, float d) {
  stroke(0);
  noFill();
  ellipse(x, y, d, d);
  if (d>mouseX*0.01) {
    drawCircle(x+d/2, y, d/2);
    drawCircle(x-d/2, y, d/2);
    drawCircle(x, y+d/2, d/2);
  }
}
