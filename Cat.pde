public class Cat {


  //1.Attributes

  private int r; //red
  private int g; //green
  private int b; //blue





  //2.Constructors with validation

  //Constructor with no parameters
  public Cat()
  {
  }


  //Constructor with 3 parameters and validation
  public Cat (int r, int g, int b)  
  {

    if ((r >= 0) && (r <=255)) {
      this.r = r;
    } else {
      this.r =255;
    }

    if ((g >=0) && (g <=255)) {
      this.g = g;
    } else {
      this.g =255;
    }

    if ((b >= 0) && (b <= 255)) {

      this.b = b;
    } else {
      this.b =255;
    }
  }


  //3.Methods

  //display right cat
  public void displayRight()
  {
    fill(r, g-50, b);
    ellipse(650, 450, 150, 200); //body
    fill(r+40, g-30, b);
    ellipse(650, 475, 100, 125); //body
    fill(r, g-50, b);
    triangle(580, 220, 580, 290, 630, 250); //left ear
    triangle(720, 220, 640, 280, 720, 290); //right ear
    fill(r+40, g-30, b);
    ellipse(650, 320, 150, 150); //head
    fill(0);
    ellipse(620, 290, 10, 10); //left eye
    ellipse(680, 290, 10, 10); //right eye
    triangle(640, 330, 660, 330, 650, 340); //nose
  }

  //display left cat
  public void displayLeft()
  {
    fill(r, g-50, b);
    ellipse(150, 450, 150, 200); //body
    fill(r+40, g-30, b);
    ellipse(150, 475, 100, 125); //body
    fill(r, g-50, b);
    triangle(80, 220, 80, 290, 130, 250); //left ear
    triangle(220, 220, 140, 280, 220, 290); //right ear
    fill(r+40, g-30, b);
    ellipse(150, 320, 150, 150); //head
    fill(0);
    ellipse(120, 290, 10, 10); //left eye
    ellipse(180, 290, 10, 10); //right eye
    triangle(140, 330, 160, 330, 150, 340); //nose
  }

  //display center cat
  public void displayCenter() {
    fill(r, g-50, b);
    ellipse(400, 450, 150, 200); //body
    fill(r+40, g-30, b);
    ellipse(400, 475, 100, 125); //body
    fill(r, g-50, b);
    triangle(330, 220, 330, 290, 380, 250); //left ear
    triangle(470, 220, 390, 280, 470, 290); //right ear
    fill(r+40, g-30, b);
    ellipse(400, 320, 150, 150); //head
    fill(0);
    ellipse(370, 290, 10, 10); //left eye
    ellipse(430, 290, 10, 10); //right eye
    triangle(390, 330, 410, 330, 400, 340); //nose
  }



  //4.Getters


  public int getR() {
    return r;
  }

  public int getG() {
    return g;
  }

  public int getB() {
    return b;
  }



  //5.Setters with validation

  public void setR(int r) {
    if ((r >= 0) && (r <=255)) {
      this.r = r;
    } else {
      this.r =255;
    }
  }

  public void setG(int g) {
    if ((g >=0) && (g <=255)) {
      this.g = g;
    } else {
      this.g =255;
    }
  }

  public void setB(int b) {
    if ((b >=0) && (b <=255)) {

      this.b = b;
    } else {
      this.b =255;
    }
  }
}
