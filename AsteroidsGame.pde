//your variable declarations here
private Spaceship ship;
private Star[] skyStar = new Star[200];
private ArrayList <Asteroid> asteroidList = new ArrayList <Asteroid>();
private ArrayList <Bullet> bulletList = new ArrayList <Bullet>();
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
  	asteroidList.add(new Asteroid());
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
  for(int i = 0; i < asteroidList.size(); i++)
  {
  	Asteroid asteroid = asteroidList.get(i);
  	asteroid.show();
  	asteroid.move();
  }
  for(int i = 0; i < bulletList.size(); i++){
    Bullet bullet = bulletList.get(i);
    bullet.move();
    bullet.accelerate(6);
    bullet.show();
  }
  for(int y = 0; y < bulletList.size(); y++)
  {
  	Bullet currentBullet = bulletList.get(y);
  	for(int i = 0; i < asteroidList.size(); i++)
  	{
  		Asteroid currentAsteroid = asteroidList.get(i);
  		if(dist((float)currentAsteroid.getX(), (float)currentAsteroid.getY(), (float)currentBullet.getX(), (float)currentBullet.getY())<20)
  		{
  			asteroidList.remove(i);
  			bulletList.remove(y);
  			i = i - 1;
  		}
  	}
  }
  for(int i = 0; i < asteroidList.size(); i++)
  {
  	Asteroid currentAsteroid = asteroidList.get(i);
  	if(dist((float)currentAsteroid.getX(),(float)currentAsteroid.getY(),ship.getX(),ship.getY())<20)
  	{
  		asteroidList.remove(i);
  		i--;
  	}
  }
  
  if (keyPressed)
	{
		if(key == 'a')
			ship.turn(-5);
		if(key == 'd')
			ship.turn(5);
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
		if(key == 'q')
			bulletList.add(new Bullet(ship));
	}