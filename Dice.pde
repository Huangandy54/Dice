int sum=0;
int roll=0;
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
  text("Total is: "+sum+"    Rolls:"+roll,0,420);
}
void mousePressed()
{
  redraw();
  sum=0;
  roll++;
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
    stroke(1);
    fill(255);
    rect(diceX,diceY ,50,50,10);
    if (roll==1) {
      noStroke();
      fill(255,0,0);
      ellipse(diceX+25, diceY+25, 10,10);
    }
    if (roll==2) {
      noStroke();
      fill(255,0,0);
      ellipse(diceX+40, diceY+10, 10, 10);
      ellipse(diceX+10, diceY+40, 10, 10);
    }

    if (roll==3) {
      noStroke();
      fill(255,0,0);
      ellipse(diceX+40, diceY+10, 10, 10);
      ellipse(diceX+25, diceY+25, 10, 10);
      ellipse(diceX+10, diceY+40, 10, 10);
    }

    if (roll==4) {
      noStroke();
      fill(255,0,0);
      ellipse(diceX+10, diceY+10, 10, 10);
      ellipse(diceX+40, diceY+10, 10, 10);
      ellipse(diceX+10, diceY+40, 10, 10);
      ellipse(diceX+40, diceY+40, 10, 10);
    }

    if (roll==5) {
      noStroke();
      fill(255,0,0);
      ellipse(diceX+10, diceY+10, 10, 10);
      ellipse(diceX+40, diceY+10, 10, 10);
      ellipse(diceX+10, diceY+40, 10, 10);
      ellipse(diceX+25, diceY+25, 10, 10);
      ellipse(diceX+40, diceY+40, 10, 10);
    }

    if (roll==6) {
      noStroke();
      fill(255,0,0);
      ellipse(diceX+10, diceY+10, 10, 10);
      ellipse(diceX+10, diceY+25, 10, 10);
      ellipse(diceX+10, diceY+40, 10, 10);
      ellipse(diceX+40, diceY+10, 10, 10);
      ellipse(diceX+40, diceY+25, 10, 10);
      ellipse(diceX+40, diceY+40, 10, 10);
    }



  }
}
