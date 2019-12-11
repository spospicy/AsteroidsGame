//your variable declarations here
Spaceship ship;
Star[] skyStar = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void setup() 
{
  //your code here
  size(750,750);
  background(0);
  ship = new Spaceship();
  for(int i = 0; i < skyStar.length; i++)
  {
  	skyStar[i] = new Star();
  }
  for(int i = 0; i < 20; i++)
  {
  	asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(0);
  ship.show();
  ship.move();
  for(int i = 0; i < skyStar.length; i++)
  {
  	skyStar[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++)
  {
  	asteroids.get(i).show();
  	asteroids.get(i).move();
  }
  if (keyPressed)
	{
		if(key == 'a')
			ship.turn(-10);
		if(key == 'd')
			ship.turn(10);
		if(key == 'w')
			ship.accelerate(.1);
		if(key == 's')
			ship.accelerate(-.1);
	}
	if(keyPressed)
	{
		if(key == 'd')
			ship.turn(10);
	}
	if(keyPressed)
	{
		if(key == 'w')
			ship.accelerate(.1);
	}
	if(keyPressed)
	{
		if(key == 's')
			ship.accelerate(.1);
	}
}
public void keyPressed()
{
	if(key == 'h')
			ship.hyperSpace();
}


