import javax.swing.*; 

Cat[] cats; //creating cat array

PImage img; //importing image function
int r;
int g;
int b;
String name;

void setup () {
  size (800, 500);
  cats = new Cat[3]; //building array of 3 cats
  name();
  setColor();
  tint(255, 128); //tint of img
  img = loadImage("moon.png"); //loading image
}


void draw() {
  back();
  image(img, 10, 10, width/6, height/6); //coordinates and size of img
  mousePressed1();
}

void keyPressed() 
{
  if (key == 'r' || key == 'R')
  {
    setRed();
  } else if (key == 'g' || key == 'G') {

    setGreen();
  } else if (key == 'b' || key == 'B') {

    setBlue();
  }
}





void setRed() {
  for (int i = 0; i < cats.length; i++) { //looping for amount of objects
    r = Integer.parseInt(JOptionPane.showInputDialog(
      "Hello, " + name + ". Please enter a number between 0-255.", "0"));

    cats[i].setR(r); //change r value of all cats in array
  }
}

void setGreen() {
  for (int i = 0; i < cats.length; i++) { //looping for amount of objects
    g = Integer.parseInt(JOptionPane.showInputDialog(
      "Hello, " + name + ". Please enter a number between 0-255.", "0"));


    cats[i].setG(g); //change g value for all cats in array
  }
}

void setBlue() {
  for (int i = 0; i < cats.length; i++) { //looping for amount of objects
    b = Integer.parseInt(JOptionPane.showInputDialog(
      "Hello, " + name + ". Please enter a number between 0-255.", "0"));

    cats[i].setB(b); //change b value for all cats in array
  }
}

void setColor() {
  for (int i = 0; i < cats.length; i++) {
    r = Integer.parseInt(JOptionPane.showInputDialog(
      "Hello, " + name + ". Please enter a number between 0-255.", "0"));

    g = Integer.parseInt(JOptionPane.showInputDialog(
      "Please enter a number between 0-255.", "150"));

    b = Integer.parseInt(JOptionPane.showInputDialog(
      "Please enter a number between 0-255.", "0"));

    cats[i] = new Cat(r, g, b);
  }
}

void name() { //asking user to enter name
  name = (JOptionPane.showInputDialog(
    "Please enter your name.", "John"));
}

void mousePressed1() //method to display cats
{
  if (mousePressed) {
    if (mouseButton == LEFT) {
      cats[0].displayLeft();
      println("the Cat at array index [0]"); //showing user what object in the array is printing
    } else if (mouseButton ==  RIGHT)
    {
      cats[1].displayRight();
      println("the Cat at array index [1]"); //showing user what object in the array is printing
    } else if (mouseButton == CENTER) {
      cats[2].displayCenter();
      println("the Cat at array index [2]"); //showing user what object in the array is printing
    }
  }
}

void nightSky() {
  noStroke();
  fill(21, 67, 96);
  rect(0, 0, 800, 300); //night sky
}

void grass() {
  fill(82, 190, 128);
  rect(0, 300, 800, 200); //grass
}

void house() {
  fill(186, 104, 200);
  rect(200, 100, 300, 300); //house
  fill(121, 85, 72);
  triangle(350, 25, 150, 100, 550, 100); //roof
  fill(104, 80, 75); 
  rect(325, 300, 50, 100); //door
  fill(255, 255, 102);
  rect(240, 140, 75, 75); //windows
  rect(385, 140, 75, 75);
  rect(240, 265, 75, 75);
  rect(385, 265, 75, 75);
  fill(204, 219, 220);
  rect(300, 400, 100, 200); //path
}


void star(int x, int y, int size) { 
  //x and y are the coordinates of the centre point
  //size is the distance from the centre point to the points of the star

  stroke(random(0, 255)); //random values between 0,255(black, white)
  line(x, y - size, x, y + size); //vertical line
  line(x - size, y, x + size, y); //horizontal line
}

void starLoop() {
  //calling the stars in a pattern

  for (int y=0; y < 10; y++) //vertical rows
  {
    for (int x=0; x < 10; x++) //horizontal rows
    {
      star(x*100, y*100, 20); //x,y and size of stars
    }
  }
}

void back()
{
  noStroke();
  nightSky();
  starLoop();
  noStroke();
  grass();
  house();
  stroke(0);
  noStroke();
}
