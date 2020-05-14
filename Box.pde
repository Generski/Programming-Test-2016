class Box
{
  float x;
  float y;
  float l;
  
  float fallPos = random(height/2, height);
  
  Box(float tempX, float tempY, float tempL)
  {
    x = tempX;
    y = tempY;
    l = tempL;
  }
  
  void display()
  {
    noStroke();
    fill(255, 0, 0);
    rect(x, y, l, l);
  }
  
  void move(float tempX)
  {
    x = tempX;
  }
  
  void fall(float speed)
  {    
    y += speed;
    if(y > fallPos)
    {
      y = fallPos;
    }
  }
}
