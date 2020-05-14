class Person
{
  PVector location;
  PVector velocity;
  PVector acceleration;

  PVector startPos;

  float w;
  float h;



  Person(float tempX, float tempY, float tempW, float tempH)
  {
    location = new PVector(tempX, tempY);
    w = tempW;
    h = tempH;

    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void display()
  { 
    noStroke();
    fill(255, 0, 255);
    //Head
    ellipse(location.x + w/2, location.y - w, w, w);
    //Body
    rect(location.x, location.y, w, h);
    //Arms
    stroke(255, 0, 255);
    strokeWeight(2);
    line(location.x - w/2, location.y + w/2, location.x + w * 1.5, location.y + w/2);
    //Legs
    line(location.x + w/4, location.y + h, location.x + w/4, location.y + 2 * h);
    line(location.x + 3 * w/4, location.y + h, location.x + 3 * w/4, location.y + 2 * h);
  }

  void moveToBox(float tempX, float tempY)
  {
    PVector boxPos = new PVector(tempX, tempY);

    boxPos.sub(location);
    boxPos.setMag(1);
    acceleration = boxPos;

    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(1);
  }

  void goBack(PVector tempStartPos)
  { 
    /*startPos = tempStartPos;
    startPos.sub(location);
    startPos.setMag(1);
    acceleration = startPos;

    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(1);*/
    
    velocity.mult(-1);
    
    println(startPos);
  }
}
