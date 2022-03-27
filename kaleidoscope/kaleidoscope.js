// Symmetry corresponding to the number of reflections. Change the number for different number of reflections 
let symmetry = 8;   

let angle = 360 / symmetry;
let saveButton, clearButton, mouseButton, keyboardButton;
let slider;

function setup() { 
  createCanvas(500, 500);
  angleMode(DEGREES);
  background(255);

  // Creating the save button for the file
  saveButton = createButton('save');
  saveButton.mousePressed(saveFile);
  saveButton.position(0,520);

  // Creating the clear screen button
  clearButton = createButton('clear');
  clearButton.mousePressed(clearScreen);
  clearButton.position(60,520);

  // Creating the button for Full Screen
  fullscreenButton = createButton('Full Screen');
  fullscreenButton.mousePressed(screenFull);
  fullscreenButton.position(120,520);

  // Setting up the slider for the thickness of the brush
  brushSizeSlider = createP('Brush Size');
  brushSizeSlider.position(0,545);
  sizeSlider = createSlider(1, 10, 5, 1);
  sizeSlider.position(70,560);
  
  // Setting up the slider for red
  redSliderLabel = createP('Red');
  redSliderLabel.position(0,570);
  redSlider = createSlider(0, 255, 255, 1);
  redSlider.position(70,585);
  
  // Setting up the slider for green
  greenSliderLabel = createP('Green');
  greenSliderLabel.position(0,595);
  greenSlider = createSlider(0, 255, 255, 1);
  greenSlider.position(70,610);
  
  // Setting up the slider for blue
  blueSliderLabel = createP('Blue');
  blueSliderLabel.position(0,620);
  blueSlider = createSlider(0, 255, 255, 1);
  blueSlider.position(70,635);
}

// Save File Function
function saveFile() {
  save('design.jpg');
}

// Clear Screen function
function clearScreen() {
  background(255);
}

// Full Screen Function
function screenFull() {
  let fs = fullscreen();
  fullscreen(!fs);
}

function draw() {
  noStroke();
  translate(width / 2, height / 2);
  fill(0);
  rect(-250,220,190,30);
  fill(255);
  text("Size: "+sizeSlider.value(),-240,240);
  fill(255, 0, 0);
  text("R: "+redSlider.value(),-195,240);
  fill(0, 255, 0);
  text("G: "+greenSlider.value(),-150,240);
  fill(0, 0, 255);
  text("B: "+blueSlider.value(),-105,240);

  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    let mx = mouseX - width / 2;
    let my = mouseY - height / 2;
    let pmx = pmouseX - width / 2;
    let pmy = pmouseY - height / 2;
    
    if (mouseIsPressed) {
      for (let i = 0; i < symmetry; i++) {
        rotate(angle);
        let sw = sizeSlider.value();
        strokeWeight(sw);
        stroke(redSlider.value(), greenSlider.value(), blueSlider.value());
        line(mx, my, pmx, pmy);
        push();
        scale(1, -1);
        line(mx, my, pmx, pmy);
        pop();
      }
    }
  }
}
