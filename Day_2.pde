int[][] grid;
Button[][] grid2;
int rows, cols;
int gridSize = 50;

ArrayList<Button> buttons = new ArrayList<Button>();

void setup() {
  size(500, 500);
  rows = height/gridSize;
  cols = width/gridSize;
  grid = new int[rows][cols];
  grid2 = new Button[rows][cols];
  for(int x = 0; x < width; x += gridSize)
  {
    for(int y = 0; y < height; y += gridSize)
    {
      int red = (int)map(x, 0, width, 50, 255);
      int blue = (int)map(y, 0, height, 50, 255);
      buttons.add(new Button(x, y, gridSize, gridSize, red, 0, blue));
    }
  }
}

void draw() {
  background(180);
  //for(int row = 0; row < rows; row++)  line(0, row*gridSize, width, row*gridSize);
  //for(int col = 0; col < cols; col++)  line(col*gridSize, 0, col*gridSize, height);
  showButtons();
}

int getMouseRow() {
  return (int)(mouseY / gridSize);
}

int getMouseCol() {
  return (int)(mouseX / gridSize);
}

void showButtons() {
  /*
  for(int i = 0; i < buttons.size();  i++) {
    buttons.get(i).show();
  }
  */
  for (Button b : buttons) {
    b.show();
  }
}

void mousePressed() {
  for (Button b: buttons) {
    if (b.hovered()) {

    }
  }
}
