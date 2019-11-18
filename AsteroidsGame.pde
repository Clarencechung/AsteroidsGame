SpaceShip bob;
Stars [] starField;

public void setup() 
{
  size(500,500);
  bob = new SpaceShip();
  starField = new Stars[100];
  for(int i = 0; i < starField.length; i++)
    {
      starField[i] = new Stars();
    }

}
public void draw() 
{
  background(0);
  for(int i = 0; i < starField.length; i++)
    {
      starField[i].show();
    }
  bob.show();
  bob.move();
}
 
public void keyPressed()
{
  if (key == 'w')
  {
    bob.accelerate(.3);
  }
  if (key == 's')
  {
    bob.accelerate(-.3);
  }
  if (key == 'a')
  {
    bob.turn(-15);
  }
  if (key == 'd')
  {
    bob.turn(15);
  }
  if (key == 'h')
  {
    bob.setX((int)(Math.random()*500));
    bob.setY((int)(Math.random()*500));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random()*361));
  }
}
