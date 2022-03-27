class Car {
  PVector loc, vel, acc;
  float topSpeed = 10;

  Car() {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void update(float x_acc, float y_acc) {

    acc.x = x_acc;
    acc.y = y_acc;  
    vel.add(acc);
    vel.limit(topSpeed);
    loc.add(vel);
  }

  void checkEdges() {
    if (loc.x > width) {
      loc.x = 0;
    } else if (loc.x < 0) {
      loc.x = width;
    } else if (loc.y > height) {
      loc.y = 0;
    } else if (loc.y < 0) {
      loc.y = height;
    }
  }

  void show() {
    fill(255);
    rectMode(CENTER);
    rect(loc.x, loc.y, 20, 50);
  }
}
