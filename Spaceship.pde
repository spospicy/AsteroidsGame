class Spaceship extends Floater
{   
    //your code here
    public Spaceship()
    {
    	corners = 4;
    	xCorners = new int[]{-8,16,-8,-2};
    	yCorners = new int[]{-8,0,8,0};
    	myColor = color(255,255,255);
    	myCenterX = 375;
    	myCenterY = 375;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
    public void hyperSpace()
    {
    	myCenterX = (int)(Math.random()*750);
    	myCenterY = (int)(Math.random()*750);
    	myDirectionX = myDirectionY = 0;
    	myPointDirection = (int)(Math.random()*360);
    }
    public void setX(int x){myCenterX = x;}

    public int getX(){return (int)myCenterX;}

    public void setY(int y){myCenterY = y;}

    public int getY(){return (int)myCenterY;}

    public void setDirectionX(double x){myDirectionX = x;}

    public double getDirectionX(){return myDirectionX;}

    public void setDirectionY(double y){myDirectionY = y;}

    public double getDirectionY(){return myDirectionY;}

    public void setPointDirection(int degrees){myPointDirection = degrees;}

    public double getPointDirection(){return myPointDirection;}
}
