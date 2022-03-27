class Mover {
 
  PVector location,
          velocity;
          
  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
  }
  
  void update() {
    location.add(velocity);
  }
  
  void checkEdges() {
    if(location.x > width) {
      location.x = 0;
    } else if(location.x < 0) {
      location.x = width;
    } else if(location.y > height) {
      location.y = 0;
    } else if(location.y < 0) {
      location.y = height;
    }
  }  
  
  void display() {
    stroke(255);
    fill(255,30);
    ellipse(location.x, location.y, 30, 30);
  }
}
