void setup()
{
	size(400,400);
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
        one.roll();
    	}
    }
}
void mousePressed()
{
	redraw();

}
class Die //models one single dice cube
{
	int diceX, diceY, roll;
	Die(int x, int y) //constructor
	{
		diceX=x;
		diceY=y;
		roll=(int)(Math.random()*6)+1;
	}
	void roll()
	{
		if (roll==1) {
			fill(0);
			ellipse(diceX+25, diceY+25, 5, 5);
		}
		if (roll==2) {
			fill(0);
			ellipse(diceX+40, diceY+10, 5, 5);
			ellipse(diceX+10, diceY+40, 5, 5);
		}

		if (roll==3) {
			fill(0);
			ellipse(diceX+40, diceY+10, 5, 5);
			ellipse(diceX+25, diceY+25, 5, 5);
			ellipse(diceX+10, diceY+40, 5, 5);
		}

		if (roll==4) {
			fill(0);
			ellipse(diceX+10, diceY+10, 5, 5);
			ellipse(diceX+40, diceY+10, 5, 5);
			ellipse(diceX+10, diceY+40, 5, 5);
			ellipse(diceX+40, diceY+40, 5, 5);
		}

		if (roll==5) {
			fill(0);
			ellipse(diceX+10, diceY+10, 5, 5);
			ellipse(diceX+40, diceY+10, 5, 5);
			ellipse(diceX+10, diceY+40, 5, 5);
			ellipse(diceX+25, diceY+25, 5, 5);
			ellipse(diceX+40, diceY+40, 5, 5);
		}

		if (roll==6) {
			fill(0);
			ellipse(diceX+10, diceY+10, 5, 5);
			ellipse(diceX+10, diceY+25, 5, 5);
			ellipse(diceX+10, diceY+40, 5, 5);
			ellipse(diceX+40, diceY+10, 5, 5);
			ellipse(diceX+40, diceY+25, 5, 5);
			ellipse(diceX+40, diceY+40, 5, 5);
		}



	}
	void show()
	{
		fill(255);
		rect(diceX,diceY ,50,50,10);
		println(roll);
	}
}
