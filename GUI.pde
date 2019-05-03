class GUI {

  color buttonColour;
  int x = width/4;
  int y = 15;

  GUI() {
  }

  void render(color buttonColour) {
    stroke(0);

    fill(buttonColour);
    rect(this.x, 10, width/2, 25);
    textAlign(CENTER, CENTER);
    fill(0);
    text("Click to finish", width/2, this.y+5);
  }

  public boolean detectMouse() {

    //detect if mouse is inside the button
    if (mouseX >= this.x &&         // right of the left edge AND
      mouseX <= this.x + width/2 &&    // left of the right edge AND
      mouseY >= this.y &&         // below the top AND
      mouseY <= this.y + 20) {    // above the bottom
      return true;
    }
    return false;
  }

  public boolean detectClick() {

    if (mousePressed==true) {
      return true;
    } else {
      return false;
    }
  }
}
