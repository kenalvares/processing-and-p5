/*
  Exercise 10 - Driving a Car with Vectors.
  
  Create a simulation of a car that accelerates when you press 
  the up key and brakes when you press the down key.
*/
float x_acc = 0, y_acc = 0, a = 0.1;
Car c;

void setup() {
  size(640,360);
  c = new Car();
}

void draw() {
  background(0);
  c.update(x_acc, y_acc);
  c.checkEdges();
  c.show();
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP) {
      println("UP");
      y_acc -= a;
    } else if(keyCode == DOWN) {
      println("DOWN");
      y_acc += a;
    } else if(keyCode == LEFT) {
      println("LEFT");
      x_acc -= a;
    } else if(keyCode == RIGHT) {
      println("RIGHT");
      x_acc += a;
    }
  } else if (key == 'b') {
     x_acc = 0;
     y_acc = 0;
  }
}
