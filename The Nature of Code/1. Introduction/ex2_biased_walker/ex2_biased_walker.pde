/*
  Exercise 2 - Implementing a biased walker.
  
  This walker moves with the following probabilities:
    1. Up - 20%;
    2. Down - 20%;
    3. Left - 20%;
    4. Right - 40%;
*/

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
 w.step();
 w.display();
}
