class Cloud
{
  float x;
  float y;
  float dX;
  float dY;
  float speed = random(1,2);
  
  float cloudWidth;
  
  Cloud(float tempX, float tempY, float tempDX, float tempDY)
  {
    x = tempX;
    y = tempY;
    dX = tempDX;
    dY = tempDY;
  }
  
  void display()
  {
    float rightX = x + dX/2;
    float leftX = x - dX/2;
    
    noStroke();
    fill(255);
    ellipse(x, y, dX, dY);
    ellipse(leftX, y, dX * 0.6, dY * 0.8);
    ellipse(rightX, y, dX * 0.6, dY * 0.8);
    
    float smallCloudWidth = dX * 0.6;
    cloudWidth = dX + smallCloudWidth * 2;
  }
  
  void move()
  {
    x -= speed;
    if(x < 0 - cloudWidth/2)
    {
      y = random(0, height/2 - dY);
      x = width + cloudWidth/2;
    }
  }
}
