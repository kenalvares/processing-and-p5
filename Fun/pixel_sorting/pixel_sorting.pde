PImage img ;
PImage sorted;
int index; 

void setup() {
  frameRate(120);
  size(600, 300);
  img = loadImage("sunflower.jpg");
  sorted = createImage(img.width, img.height, RGB);
  sorted = img.get();
}

void draw() {
  sorted.loadPixels();
  
  // Selection Sort
  for(int n=0; n<100; n++) {
    float record = -1;
    int selectedPixel = index;
    for(int j=index; j<sorted.pixels.length; j++) {
      color pix = sorted.pixels[j];
      float b = brightness(pix);
      if(b > record) {
        selectedPixel = j;
        record = b;
      }
    }
    
    // Swap
    color temp = sorted.pixels[index];
    sorted.pixels[index] = sorted.pixels[selectedPixel];
    sorted.pixels[selectedPixel] = temp;
  
    if(index < sorted.pixels.length-1) {
      index++;
    }
  sorted.updatePixels();
  
  }
  background(0);
  image(img, 0, 0);
  image(sorted, width/2, 0);
  
}
