//Jacob Cantanho -- Microsoft Paint Clone

//integers for changing color buttons
int red = 0;
int green = 0;
int blue = 0;
int length = 15;
int height = 15;

//setup window, create shapes and their colors, and set stroke settings.
void setup() {
  size(400, 400);
  background(255);
  //back rect
  rect(0, 0, 400, 50);
  //rect 1 darker red
  fill(150, 0, 0);
  rect(0, 0, 20, 20);
  //rect 2 lighter red
  fill(250, 0, 0);
  rect(30, 0, 20, 20);
  //rect 3 darker green
  fill(0, 150, 0);
  rect(60, 0, 20, 20);
  //rect 4 lighter green
  fill(0, 250, 0);
  rect(90, 0, 20, 20);
  //rect 5 darker blue
  fill(0, 0, 150);
  rect(120, 0, 20, 20);
  //rect 6 lighter blue
  fill(0, 0, 250);
  rect(150, 0, 20, 20);
  //rect 8 decreases brush size
  fill(200);
  rect(240, 0, 20, 20);
  //rect 9 increases brush size
  fill(150);
  //sets text, text sizes, and text locations
  textSize(17);
  rect(265, 0, 20, 20);
  text("color", 80, 40);
  text("brush size", 200, 40);
}

// Empty draw() keeps the program running
void draw() {
  //rect 7 returns current color
  fill(red, green, blue);
  rect(200, 0, 15, 15);
}
//If mouse dragged, then ellipse is drawn as the mouse moves
void mouseDragged() {
  fill(red, green, blue);
  ellipse(mouseX, mouseY, length, height);
}
//If a specified parameter is clicked, add or subtract from the RGB values preset initially.
void mousePressed() {
  //darker red, 
  if (mousePressed && mouseX < 20 && mouseY < 20) {
    red = red - 25;
  }
  //lighter red
  if (mousePressed && mouseX > 30 && mouseX < 50 && mouseY < 20) {
    red = red + 25;
  }
  //darker green
  if (mousePressed && mouseX > 60 && mouseX < 80 && mouseY < 20) {
    green = green - 25;
  }
  //lighter green
  if (mousePressed && mouseX > 90 && mouseX < 110 && mouseY < 20) {
    green = green + 25;
  }
  //darker blue
  if (mousePressed && mouseX > 120 && mouseX < 140 && mouseY < 20) {
    blue = blue +25;
  }
  //lighter blue
  if (mousePressed && mouseX > 150 && mouseX < 170 && mouseY < 20) {
    blue = blue + 25;
  }
  //smaller brush
  if (mousePressed && mouseX > 240 && mouseX < 260 && mouseY < 20) {
    length = length - 2;
    height = height -2;
  }
  if (mousePressed && mouseX > 265 && mouseX < 285 && mouseY < 20) {
    length = length + 2;
    height = height + 2;
  }
}
