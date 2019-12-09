//your variable declarations here
Spaceship ship;
Star[] skyStar = new Star[200];
Asteroid[] asteroids = new Asteroid[20];
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
  for(int i = 0; i < asteroids.length; i++)
  {
  	asteroids[i] = new Asteroid();
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
  for(int i = 0; i < asteroids.length; i++)
  {
  	asteroids[i].show();
  	asteroids[i].move();
  }
  if (keyPressed)
	{
		if(key == 'h')
			ship.hyperSpace();
		if(key == 'a')
			ship.turn(-10);
		if(key == 'd')
			ship.turn(10);
		if(key == 'w')
			ship.accelerate(.1);
		if(key == 's')
			ship.accelerate(-.1);

	}
}


