//Jacob Cantanho -- Microsoft Paint Clone

//integers for changing color buttons
int red = 250;
int green = 250;
int blue = 250;

//setup window, create shapes and their colors, set stroke settings, and frame rate
void setup() {
  size(400, 400);
  background(255);
  //back rect
  rect(0,0,400,50);
  //rect 1 darker red
  fill(150,0,0);
  rect(0,0,20,20);
  //rect 2 lighter red
  fill(250,0,0);
  rect(30,0,20,20);
  //rect 3 darker green
  fill(0,150,0);
  rect(60,0,20,20);
  //rect 4 lighter green
  fill(0,250,0);
  rect(90,0,20,20);
  //rect 5 darker blue
  fill(0,0,150);
  rect(120,0,20,20);
  //rect 6 lighter blue
  fill(0,0,250);
  rect(150,0,20,20);
  //rect 7 returns current color
  fill(red,green,blue);
  rect(200,0,15,15);
  //strokeWeight(0);
  //stroke(0);
  frameRate(20);
}

 // Empty draw() keeps the program running
void draw() {
}
//If mouse dragged, then ellipse is drawn as the mouse moves
void mouseDragged() {
  fill(red,green,blue);
  ellipse(mouseX, mouseY, 15, 15);
}
//If a specified parameter is clicked, add or subtract from the RGB values preset initially.
void mousePressed() {
  {
    //darker red
  if (mousePressed && mouseX < 20 && mouseY < 20) {
    fill(red-25,green,blue);
  }
  //lighter red
  if (mousePressed && mouseX > 30 && mouseX < 50 && mouseY < 20) {
    fill(red+25,green,blue);
  }
  //darker green
  if (mousePressed && mouseX > 60 && mouseX < 80 && mouseY < 20) {
    fill(red,green-25,blue);
  }
  //lighter green
  if (mousePressed && mouseX > 90 && mouseX < 110 && mouseY < 20) {
    fill(red,green+25,blue);
  }
  //darker blue
  if (mousePressed && mouseX > 120 && mouseX < 140 && mouseY < 20) {
    fill(red,green,blue-25);
  }
}}
