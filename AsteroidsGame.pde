SpaceShip bob;
Stars [] starField;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> bull = new ArrayList <Bullet>();

public void setup() 
{
  size(500,500);
  bob = new SpaceShip();
  starField = new Stars[100];
  for(int i = 0; i < starField.length; i++)
    {
      starField[i] = new Stars();
    }

   for(int i = 0; i < 40; i ++)
   {
      rocks.add(new Asteroid());
   }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < starField.length; i++)
    {
      starField[i].show();
    }
   for(int i = 0; i < rocks.size(); i ++)
    {
       if (dist(bob.getX(), bob.getY(), rocks.get(i).getX(), rocks.get(i).getY()) < 10 )
          rocks.remove(i);
       else
        {
          rocks.get(i).show();
          rocks.get(i).move();
        }
    }
    for (int i = 0; i < bull.size(); i++)
  {
    bull.get(i).show();
    bull.get(i).move();
  }
  for (int i = 0; i < bull.size(); i++)
  {
    for (int j = 0; j < rocks.size(); j++)
    {
      if(dist(bull.get(i).getX(), bull.get(i).getY(), rocks.get(j).getX(), rocks.get(j).getY()) < 20)
        rocks.remove(j);
    }
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
    bob.setX((int)(Math.random()*501));
    bob.setY((int)(Math.random()*501));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random()*361));
  }
    if (key == ' ')
  {
    bull.add(new Bullet(bob));
  }
}

	