class Asteroid extends Floater
{
    
    private int rockrot;
    public void setX(int x) {myCenterX = x;} 
    public int getX() {return (int)myCenterX;}   
    public void setY(int y) {myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x) {myDirectionX = x;} 
    public double getDirectionX() {return myDirectionX;}  
    public void setDirectionY(double y) {myDirectionY = y;}
    public double getDirectionY() {return myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}
    public double getPointDirection() {return myPointDirection;}

    public Asteroid()
    {
    myColor = color(81, 74, 74);
      
      corners = 7;
      
      xCorners = new int[]{-20, -10, 5, 20,10, -10, -20};
      yCorners = new int[]{0, -20, -20 ,0, 20, 15, 0};
      
      myCenterX = (int)(Math.random()*600);
      myCenterY = (int)(Math.random()*600);
      rockrot = (int)((Math.random()*8)-10);
    }

    public void move()
    {
      
      super.move();
      turn(rockrot);
      myCenterX += Math.cos(rockrot);
      myCenterY += Math.sin(rockrot);
      if(myCenterX > width)
        myCenterX = 0;
      if (myCenterY > height)
        myCenterY = 0;
      
    }
  }
