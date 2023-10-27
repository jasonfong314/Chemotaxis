Walker one;
Walker [] arrayGroup;
void setup()
{
  size (500, 500);
  one=new Walker(250, 250);
  arrayGroup = new Walker[1000];
  for (int i=0; i<arrayGroup.length; i++) {

    arrayGroup[i] = new Walker(250, 250);
  }
}
void draw()
{
  background(128, 128, 128);
  one.show();
  one.walk();
  for (int i=0; i<arrayGroup.length; i++) {
    arrayGroup[i].show();
    arrayGroup[i].walk();
    
  }
}
class Walker
{
  int myX, myY, myColor;
  Walker(int x, int y)
  {
    if (x == 250)
      myX = (int)(Math.random()*450)+25;
    if (y==250)
      myY = (int)(Math.random()*450)+25;
    myColor = color(255, 255, 0);
  }
  void walk()
  {
    myX=myX+(int)(Math.random()*7)-3;
    myY=myY+(int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(myColor);
    rect(myX,myY,3,2);
  }
}
