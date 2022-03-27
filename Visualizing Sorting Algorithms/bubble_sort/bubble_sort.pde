float[] lines;
int count, comparisons;

void setup() {
  size(800, 500);
  //fullScreen();
  lines = new float[width];
  count = 0;
  comparisons = 0;
  
  // Randomize
  for(int i = 0; i < lines.length; i++) {
    lines[i] = random(height);
  }
}

void draw() {
  background(0);
  textSize(18);
  text("Bubble Sort", 10, 20); 
  String comparisonCount = "No. of comparisons: " + comparisons;
  text(comparisonCount, 10, 40); 
  
  // Should we stop sorting?
  if(count >= lines.length) {
    noLoop();
  }
  
  // Sort
  for(int j = 0; j < lines.length-1-count; j++) {
    float num1 = lines[j];
    float num2 = lines[j+1];
    if(num1 > num2) {
      comparisons++;
      swap(lines, j, j+1);
    }
  }
  
  count++;
  display(lines);
}

void swap(float[] arr, int a, int b) {
  float temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
}

void display(float[] arr) {
  for(int i = 0; i < lines.length; i++) {
    stroke(255);
    line(i, height, i, height-lines[i]);
  }
}
