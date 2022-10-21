Bacteria[] bob;
void setup() 
{
  size(500,500);
  background(200);
  bob = new Bacteria[50];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}
void draw()
{
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}
class Bacteria
{
  int startX,startY,endX,endY;
  Bacteria()
  {
    startX = endX = (int)(Math.random()*500);
    startY = endY = (int)(Math.random()*500);
  }
  void move()
  {
    endX = startX + (int)(Math.random()*7)-3;
    endY = startY + (int)(Math.random()*7)-3;
    startX = endX;
    startY = endY;
  }
  void show()
  {
    strokeWeight(5);
    stroke(#6CD156);
    line(startX,startY,endX,endY);
  }
}
