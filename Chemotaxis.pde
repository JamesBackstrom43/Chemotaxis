Walker[] bob;
void setup() 
{
  size(500,500);
  background(200);
  bob = new Walker[100];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Walker();
  }
}
void draw()
{
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].walk();
  }
}
class Walker
{
  color myC;
  int startX,startY,endX,endY;
  Walker()
  {
    myC = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    startX = endX = (int)(Math.random()*500);
    startY = endY = (int)(Math.random()*500);
  }
  void walk()
  {
    endX = startX + (int)(Math.random()*7)-3;
    endY = startY + (int)(Math.random()*7)-3;
    startX = endX;
    startY = endY;
  }
  void show()
  {
    strokeWeight(5);
    //stroke(#6CD156);
    stroke(myC);
    line(startX,startY,endX,endY);
  }
}
