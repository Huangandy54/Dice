int sum=0;
void setup()
{
  size(400,425);
  noLoop();
}
void draw()
{
  background(random(0,255),random(0,255),random(0,255));
  for(int y = 0; y < 400; y+=50)
    {
    for(int x = 0; x < 400; x+=50)
      {
    Die one = new Die(x,y);
        one.show();
        sum=sum+one.roll;
      }
    }
  fill(0);
  textSize(20);
  text("total is: "+sum,0,415);
}
void mousePressed()
{
  redraw();
  sum=0;
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
    
  }
  void show()
  {
    fill(255);
    rect(diceX,diceY ,50,50,10);
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
}
