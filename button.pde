class Button
{
  int pixelX, pixelY, w, h, r, g, b;
  int gridX, gridY;
  Button(int _x, int _y, int _w, int _h, int _r, int _g, int _b)
  {
    pixelX = _x; pixelY = _y;
    w = _w; h = _h;
    r = _r; g = _g; b = _b;
    gridX = (int)(pixelX / gridSize);
    gridY = (int)(pixelY / gridSize);
  }
  void show()
  {
    fill(r, g, b);
    rect(pixelX, pixelY, w, h);
  }

  /*
  boolean hovered()
  {
    return mouseX > pixelX && mouseX < pixelX + w && mouseY > pixelY && mouseY < pixelY + h;
  }
  */

  boolean hovered()
  {
    return gridX == getMouseCol() && gridY == getMouseRow();
  }
}
