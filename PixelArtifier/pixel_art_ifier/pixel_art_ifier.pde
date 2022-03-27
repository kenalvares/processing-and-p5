PImage img;
int dim = 1200,
    factor = dim/5;
String input = "input.png",
        output = "output.png";

void setup() {
  size(1200,1200);
  img = loadImage(input);
  showImage();
}

void draw() {
  processImg();
  saveScreen();
}

void showImage() {
  background(0);
  image(img,0,0,width,height); 
}

void processImg() {
  for(int i = 0; i < dim; i += dim/factor) {
    for(int j = 0; j < height; j = j + dim/factor) {
      color c = getAvgColor(i, j);
      showRect(i, j, c);
    }
  }
}

void showRect(int x, int y, color avg) {
  noStroke();
  fill(avg);
  rect(x,y,dim/factor,dim/factor);
}

color getAvgColor(int x, int y) {
  return get((x+(dim/factor)/2), (y+(dim/factor)/2));
}

void saveScreen() {
  PImage screen = get(0, 0, width, height);
  screen.save(output);
}
  
