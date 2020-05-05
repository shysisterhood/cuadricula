let symmetry = 1;   
let angle = 360 / symmetry;
let saveButton, clearButton, mouseButton, keyboardButton;
let slider;

var s;
var rSlider, gSlider, bSlider;

function setup() {
  createCanvas(710, 710);
  angleMode(DEGREES);
  rSlider = createSlider(0, 255, 0);
  rSlider.position(10, 25);
  gSlider = createSlider(0, 255, 0);
  gSlider.position(10, 55);
  bSlider = createSlider(0, 255, 255);
  bSlider.position(10, 85);
  
 
  s = 15;
  background('#D1D1D1');
  stroke('#ffff');
  strokeWeight(1);
  
  saveButton = createButton('Guardar');
  saveButton.mousePressed(saveFile);

  // Creating the clear screen button
  clearButton = createButton('Limpiar');
  clearButton.mousePressed(clearScreen);

  // Creating the button for Full Screen
  fullscreenButton = createButton('Full Screen');
  fullscreenButton.mousePressed(screenFull);

  // Setting up the slider for the thickness of the brush
  brushSizeSlider = createButton('Brush Size Slider');
  sizeSlider = createSlider(1, 32, 4, 0.1);
  
  //CANVAS
     for (var i = 15; i <= width; i=i+30) {
    line(i, 15, i, 710);
  }
  
  for (var j = 15; j <= height; j=j+30) {
    line(15, j, width, j);
}
 
}

function saveFile() {
  save('design.jpg');
}

// Clear Screen function
function clearScreen() {
  background(127);
}

// Full Screen Function
 function screenFull() {
  let fs = fullscreen();
  fullscreen(!fs)
}

function draw() {
  //translate(height/2 , width/2 );
  
  noStroke();
  var r = rSlider.value();
  var g = gSlider.value();
  var b = bSlider.value();
  
  if (mouseY > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    
    let mx = mouseX - width * 2;
    let my = mouseY - height * 2;
    let pmx = pmouseX - width *2 ;
    let pmy = pmouseY - height *2;
  }
  
  mX = (int(mouseX/(s*2)))*(s*2);
  //console.log(mouseIsPressed);
  
  mY = (int(mouseY/(s*2)))*(s*2);
  //console.log(mouseY);
  
  if (mouseIsPressed) {
    
    for (let i = 0; i < symmetry; i++) {
        rotate(angle);
              fill(r, g, b);

        quad(mX-s, mY-s, mX+s, mY-s, mX+s, mY+s, mX-s, mY+s);
        push();
        scale(1, -1);
        quad(mX-s, mY-s, mX+s, mY-s, mX+s, mY+s, mX-s, mY+s);
        pop();
      print(mX);

      }
    }
  
    }  
  




