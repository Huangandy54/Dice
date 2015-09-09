void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	background(230);
	for(int y = 50; y < 250; y = y + 60)
    {
		for(int x = 50; x < 250; x = x + 60)
    	{
		Die one = new Die(x,y);
        one.show();
    	}
    }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int diceX, diceY;
	Die(int x, int y) //constructor
	{
		diceX=x;
		diceY=y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(diceX,diceY ,40,40);
	}
}
