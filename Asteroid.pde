class Asteroid extends Floater
{
	private float rotSpeed;

	public Asteroid()
	{
		rotSpeed = (float)(Math.random()*10-5);
		corners = 6;
    	xCorners = new int[]{-13,11,20,9,-13,-8};
    	yCorners = new int[]{-12,-13,0,15,12,0};
    	myColor = color(127);
    	myCenterX = (int)(Math.random()*750);
    	myCenterY = (int)(Math.random()*750);
    	myDirectionX = (float)(Math.random()*5-2);
    	myDirectionY = (float)(Math.random()*5-2);
    	myPointDirection = (int)(Math.random()*360);
	}
	public void move()
	{
    	myPointDirection += rotSpeed;
    	super.move();
	}
}