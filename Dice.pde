void setup()
  {
    size(600,600);  
    noLoop();
  }
  void draw()
  {
      background(102);
      int sum = 0;
      for(int y = 100; y < 400; y += 130)
        for(int x = 100; x < 400; x+= 130){
          Die bob = new Die(x,y);
          bob.show();
          sum = sum + bob.numDots;
        }
        fill(255);
  textAlign(CENTER);
  text( "The sum of these dice is " + sum, 300, 550);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY, numDots;
      
      Die(int x, int y) //constructor
      {
          roll();
          myX = x;
          myY = y;
      }
      void roll()
      {
          numDots = (int)(Math.random()*6+1);
      }
      void show(){
        fill(255);
        rect(myX, myY, 100,100);
        fill(0);
   if (numDots==1){
      ellipse(myX+50, myY+50, 10, 10);
   }
    if (numDots==2) {
      ellipse(myX+25, myY+85, 10, 10);
      ellipse(myX+75, myY+20, 10, 10);
    }
    if (numDots==3) {
      ellipse(myX+25, myY+85, 10, 10);
      ellipse(myX+75, myY+20, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }
    if (numDots==4) {
      ellipse(myX+25, myY+85, 10, 10);  
      ellipse(myX+75, myY+85, 10, 10);
      ellipse(myX+25, myY+20, 10, 10);  
      ellipse(myX+75, myY+20, 10, 10);
    }
    if (numDots==5) {
      ellipse(myX+25, myY+85, 10, 10);  
      ellipse(myX+75, myY+85, 10, 10);
      ellipse(myX+25, myY+20, 10, 10);  
      ellipse(myX+75, myY+20, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }                                                                      
    if (numDots==6) {
      ellipse(myX+25, myY+85, 10, 10);  
      ellipse(myX+75, myY+85, 10, 10);
      ellipse(myX+25, myY+20, 10, 10);  
      ellipse(myX+75, myY+20, 10, 10);
      ellipse(myX+25, myY+50, 10, 10);
      ellipse(myX+75, myY+50, 10, 10);
    }
      }
  }
