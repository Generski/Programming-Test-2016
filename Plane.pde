class Plane
{
  float x;
  float y;
  float w;
  float h;
  
  Plane(float tempX, float tempY, float tempW, float tempH)
  {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  }
  
  void display()
  {
    noStroke();
    fill(180);
    //Body
    rect(x, y, w, h);
    //Wings
    rect(x + w/2, y - h, h, 3 * w/4);
    //Front
    triangle(x + w, y, x + w, y + h, x + w + h, y + h);
    //Tail
    triangle(x, y, x, y - h/2, x + h/2, y);
    //Windows
    for(int i = 0 ; i < 4; i++)
    {
      noStroke();
      fill(0);
      rect((x + h/4) + h * i, y + h/4, w/4 * 1/2, h/2);
    }
  }
  
  void move(float speed)
  {
    x += speed;
    
    if(x > width)
    {
      x = 0 - (w + h);
    }
  }
}
