/*
  Exercise 3 - Visualizing gaussian distribution.
  
  Taking the center of the width of the screen as the average 
  position (320) and Standard Deviation as 60, [i.e range is 
  from (260, 380)], this program displays a gaussian distribution
  of ellipses with majority being concentrated around the mean
  with a few outliers on either extreme.
*/

import java.util.Random;

Random gen;

void setup() {
  size(640,360);
  gen = new Random();
  background(0);
}

void draw() {
  float num = (float) gen.nextGaussian();
  float sd = 60;
  float mean = 320;
  
  float x = sd * num + mean;
  
  noStroke();
  fill(255,10);
  ellipse(x,180,16,16);
}
