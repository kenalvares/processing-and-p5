/*
  Exercise 4 - Levy Flight.
  
  Random walkers return to previously visited locations many times 
  (this is known as “oversampling”). One strategy to avoid such a 
  problem is to, every so often, take a very large step. This allows 
  the walker to forage randomly around a specific location while 
  periodically jumping very far away to reduce the amount of 
  oversampling. This variation on the random walk (known as a Lévy 
  flight) requires a custom set of probabilities. 
  eg: The longer the step, the less likely it is to be picked; the 
  shorter the step, the more likely.
  
  In this case, the walker has a 1% chance of taking a large step.
*/

Grower g;

void setup() {
  size(640,360);
  g = new Grower();
}

void draw() {
  background(0);
  g.step();
  g.display();
}
