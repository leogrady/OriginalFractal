int  len = 0;
int c = 255;

public void setup()
{
	size(600,600);
	background(0);
	rectMode(CENTER);
}

public void infiniteSquares(int x,int y, int len)
{
	if(len<=20)
	{
		noFill();
		stroke(200,200,c);
		rect (x,y,len,len);
		ellipse(x,y,len,len);
		ellipse(x,y,len/2,len/2);
		ellipse(x,y,len/4,len/4);
		

	}
	else
	{
		infiniteSquares(x-(len/2),y-(len/2),len/2);
		infiniteSquares(x-(len/2),y+(len/2),len/2);	
		infiniteSquares(x+(len/2),y+(len/2),len/2);
		infiniteSquares(x+(len/2),y-(len/2),len/2);
		rect (x,y,len,len);
		ellipse(x,y,len,len);
		ellipse(x,y,len/2,len/2);
		ellipse(x,y,len/4,len/4);
	}
}

public void draw()
{
	infiniteSquares(300,300, len); 
}

void keyPressed()
{
    if (key == CODED)
 	{
 		if (keyCode == UP)
 		{
 			len = len +10;
 			c = c -8;
 			background(0);
 		}
 	else if (keyCode == DOWN)
 		{
 			len = len -10;
 			c = c + 8;
 			background(0);
 		}
 	}
}


