Die bob;
void setup()
{
	size(300,300);
	noLoop();
	bob = new Die (10,10);
}
void draw()
{
	background(200);
	bob.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY ;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255,0,0);
		rect (myX, myY, 10, 10);
	}
}
