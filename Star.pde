class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY;
  private float mySize;
  public Star()
  {
  	myX = (int)(Math.random()*750);
  	myY = (int)(Math.random()*750);
  	mySize = (float)(Math.random()*2 + 1);
  }
  public void show()
  {
  	fill(255);
  	ellipse(myX, myY, mySize, mySize);
  }
}
