class Board {

  Board() {
  }

  public void render() {
    int border = gap * 2;

    stroke(0);
    fill(0);
    for (int i = border; i < (width-border + 1); i = i + gap) {
      line(i, border, i, height-border);
    }

    for (int j = border; j < (height-border + 1); j = j + gap) {
      line(border, j, width-border, j);
    }
  }
}
