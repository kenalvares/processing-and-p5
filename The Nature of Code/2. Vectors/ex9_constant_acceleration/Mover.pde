class Mover {
 
  PVector location,
          velocity,
          acceleration;
  float topspeed;
          
  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001, 0.01);
    topspeed = 10;
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(topspeed);
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
