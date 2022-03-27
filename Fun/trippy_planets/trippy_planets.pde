void setup() {
  //size(640, 360);
  fullScreen();
}

void draw() {
  background(51);
  frameRate(10);
  drawCircle(width/2, height/2, 360);
}

void drawCircle(float x, float y, float d) {
  noStroke();
  fill(random(100,255),random(100,255),random(100,255),random(200,255));
  ellipse(x, y, d, d);
  if (d>10) {
    drawCircle(x+d/2, y, d/2);
    drawCircle(x, y+(3*d), d/2);
    drawCircle(x, y-(3*d), d/2);
    drawCircle(x-d/2, y, d/2);
  }
}
