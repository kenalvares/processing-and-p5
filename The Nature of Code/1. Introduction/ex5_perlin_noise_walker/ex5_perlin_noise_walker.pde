/*
  Exercise 5 - Perlin Noise.
  
  Perlin noise is a type of gradient noise developed by Ken Perlin. It produces 
  natural-appearing textures on computer generated surfaces using a randomization 
  algorithm 
  
  Here, randomness affects the position of the walker
*/

Walker w;

void setup() {
  size(640,360);
  w = new Walker();
  background(0);
}

void draw() {
  w.step();
  w.display();
}
