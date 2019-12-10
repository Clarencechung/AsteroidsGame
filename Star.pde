class Stars
{
  private int starX;
  private int starY;
  private int starSize;
  private int sColor;

  public Stars()
  {
    starSize = (int)(Math.random()*8);
    sColor = color(255,255,255);
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
  }

  public void show()
  {
    noStroke();
    fill(sColor);
    ellipse(starX, starY, starSize, starSize);
  }
}
