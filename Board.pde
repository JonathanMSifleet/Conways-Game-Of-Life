class Board {

  Board() {
  }

  void render() {
    int border = gap;

    fill(0);

    for (int i = border; i < (width-border + 1); i = i + gap) {
      line(i, border, i, height-border);
    }

    for (int j = border; j < (height-border + 1); j = j + gap) {
      line(border, j, width-border, j);
    }
  }
}
