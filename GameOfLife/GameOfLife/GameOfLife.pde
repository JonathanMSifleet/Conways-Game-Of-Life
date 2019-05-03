Board board; //<>// //<>// //<>// //<>//
Cell[][] arrayOfCells = new Cell[14][14];
GUI gui;

final int gap = 50;
boolean gameInit = false;
boolean boxesInit = false;

void setup() {
  board = new Board();
  gui = new GUI();
  size(800, 800);
}

void draw() {

  if (gameInit == false) {
    initialiseGame();
  }

  board.render();

  countCellNeighbours();
  renderCells();
}

void initialiseGame() {
  boolean buttonHighlighted = false;
  color buttonColour;

  if (boxesInit == false) {
    createArrayOfCells();
    boxesInit = true;
  }

  buttonHighlighted = gui.detectMouse();

  if (buttonHighlighted == true) {
    buttonColour = color(255, 215, 0, 200);
  } else {
    buttonColour = color(255, 255, 255);
  }

  gui.render(buttonColour);

  if (buttonHighlighted == true && gui.detectClick()) {
    gui.render(color(255, 255, 255));
    gameInit =true;
  }

  for (int j = 0; j < 14; j++) {
    for (int i = 0; i < 14; i++) {
      arrayOfCells[j][i].alive=arrayOfCells[j][i].detectMouse();
    }
  }
}

void createArrayOfCells() {
  int boxX = gap+1;
  int boxY = gap+1;

  for (int j = 0; j < 14; j++) {
    for (int i = 0; i < 14; i++) {
      arrayOfCells[j][i] = new Cell(boxX, boxY);
      boxX = boxX+gap;
    }
    boxX=gap+1;
    boxY = boxY+gap;
  }
}

void renderCells() {

  noStroke();
  fill(0, 255, 0);

  for (int j = 0; j < 14; j++) {
    for (int i = 0; i < 14; i++) {
      if (arrayOfCells[j][i].alive == true) {
        arrayOfCells[j][i].render();
      }
    }
  }
}

void countCellNeighbours() {
  for (int j = 0; j < 14; j++) {
    for (int i = 0; i < 14; i++) {
      if (arrayOfCells[j][i].alive == true) {
        print(arrayOfCells[j][i].alive);
        int temp = detectCellNeighbours(j, i); //<>//
        print(temp);
        arrayOfCells[j][i].noOfNeighbours = temp;
      }
    }
  }
}

int detectCellNeighbours(int j, int i) {
  int noOfNeighbours = 0;

  if (i > 0) {
    if (arrayOfCells[j][i-1].alive == true) {
      noOfNeighbours++;
    }
  }

  if (j > 0) {
    if (arrayOfCells[j-1][i].alive == true) {
      noOfNeighbours++;
    }
  }

  if (i<13) {
    if (arrayOfCells[j][i+1].alive == true) {
      noOfNeighbours++;
    }
  }

  if (j<13) {
    if (arrayOfCells[j+1][i].alive == true) {
      noOfNeighbours++;
    }
  }

  return noOfNeighbours;
}
