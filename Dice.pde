Die bob;
Die jill;
Die chris;
Die d;
Die e;
Die f;
Die g;
Die h;
Die i;
Die j;
void setup()
{
	size(300,300);
	noLoop();
	bob = new Die (30,20);
	jill = new Die (80,20);
	chris = new Die (130,20);
	d = new Die (180,20);
	e = new Die (230,20);
	f = new Die (30,80);
	g = new Die (80,80);
	h = new Die (130,80);
	i = new Die (180,80);
	j = new Die (230,80);
}
void draw()
{
	background(200);
	bob.show();
	jill.show();
	chris.show();
	d.show();
	e.show();
	f.show();
	g.show();
	h.show();
	i.show();
	j.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	
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
		fill(255,255,255);
		rect (myX, myY, 30, 30);
	}
}
