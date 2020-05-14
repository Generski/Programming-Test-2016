class Person
{
  float x;
  float y;
  float w;
  float h;
  
  Person(float tempX, float tempY, float tempW, float tempH)
  {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  }
  
  void display()
  {
    noStroke();
    fill(255, 0, 255);
    //Head
    ellipse(x + w/2, y - w, w, w);
    //Body
    rect(x, y, w, h);
    //Arms
    stroke(255, 0, 255);
    strokeWeight(2);
    line(x - w/2, y + w/2, x + w * 1.5, y + w/2);
    //Legs
    line(x + w/4, y + h, x + w/4, y + 2 * h);
    line(x + 3 * w/4, y + h, x + 3 * w/4, y + 2 * h);
  }
  
  void moveToBox(float tempX, float tempY, float speed)
  {
    x += speed;
    
    if(tempY > y)
    {
      y += speed;
    }
    else
    {
      y -= speed;
    }
    
    if(x >= tempX)
    {
      x = tempX;
      y = tempY;
    }
  }
}
