
int w, cols, rows;
int[][] board, next;

void setup() {
  size(960, 640);
  w = 5;
  cols = floor(width / w);
  rows = floor(height / w);
  board = new int[cols][rows];
  next = new int[cols][rows];
  reset();
}

void draw() {
  background(0,0,55);
  generate();
  for ( int i = 0; i < cols;i++) {
    for ( int j = 0; j < rows;j++) {
      if ((board[i][j] == 1)) {
        fill(255, 255, 0);
      } else {
        fill(0);
      }
      noStroke();
      rect(i * w, j * w, w-1, w-1);
    }
  }

}

// reset board when mouse is pressed
void mousePressed() {
  reset();
}

// Fill board randomly
void reset() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (i<10 || j<10 || i>cols-10 || j>rows-10) {  // Lining the edges with 0s
        board[i][j] = 0;
      } else { // Filling the rest randomly
        board[i][j] = floor(random(2));
      }
      next[i][j] = 0;
    }
  }
}

// The process of creating the new generation
void generate() {

  // Loop through every spot in our 2D array and check spots neighbors
  for (int x = 1; x < cols - 1; x++) {
    for (int y = 1; y < rows - 1; y++) {
      // Add up all the states in a 3x3 surrounding grid
      int neighbors = 0;
      for (int i = -1; i <= 1; i++) {
        for (int j = -1; j <= 1; j++) {
          neighbors += board[x+i][y+j];
        }
      }

      // A little trick to subtract the current cell's state since
      // we added it in the above loop
      neighbors -= board[x][y];
      // Rules of Life
      if ((board[x][y] == 1) && (neighbors <  2)) {
        next[x][y] = 0; // Loneliness
      } else if ((board[x][y] == 1) && (neighbors >  3)) {
        next[x][y] = 0; // Overpopulation
      } else if ((board[x][y] == 0) && (neighbors == 3)) {
        next[x][y] = 1; // Reproduction
      } else {
        next[x][y] = board[x][y]; // Stasis
      }
    }
  }

  // Swap!
  int[][] temp = board;
  board = next;
  next = temp;
}
