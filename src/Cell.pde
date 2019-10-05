class Cell {

  private int size = gap -1;
  public int x, y;
  public boolean alive;
  public int noOfNeighbours;
  public boolean future;

  Cell(int x, int y) {
    this.x = x;
    this.y = y;
    this.noOfNeighbours=0;
    this.alive=false;
    this.future=false;
  }

  public boolean detectMouse() {

    //detect if mouse is inside an option box
    if (mouseX >= this.x && mouseX <= this.x + size && mouseY >= this.y && mouseY <= this.y + size && mousePressed == true) {
      return true;
    } else {
      return false;
    }
  }

  public void render() {
    if (this.alive==true) {
      fill(0, 255, 0);
    } else {
      fill(255, 255, 255);
    }
    rect(this.x, this.y, size, size);
  }
}
