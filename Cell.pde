class Cell {

  int size = gap -1;
  int x, y;
  boolean alive;
  public int noOfNeighbours;

  Cell(int x, int y) {
    this.x = x;
    this.y = y;
    this.noOfNeighbours=0;
    this.alive=false;
  }

  boolean detectMouse() {

    //detect if mouse is inside an option box
    if (mouseX >= this.x && mouseX <= this.x + size && mouseY >= this.y && mouseY <= this.y + size && mousePressed == true) {
      return true;
    } else {
      return false;
    }
  }

  void render() {
    rect(this.x, this.y, size, size);
    fill(0);
    textAlign(CENTER, CENTER);
    text(this.noOfNeighbours, this.x+size/2, this.y+size/2);
  }
}
