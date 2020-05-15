Cloud[] clouds = new Cloud[5];
Plane p;
Box b;
Person person;
boolean hasTheBox = false;

boolean pressed = false;

float planeW = 120;
float planeH = planeW/4;

void setup()
{
  size(500, 500, P2D);

  for (int i = 0; i < clouds.length; i++)
  {
    clouds[i] = new Cloud(random(0, width), random(30, height/2 - 30), 100, 60);
  }

  p = new Plane(width/2, planeH * 2, planeW, planeH);
  b = new Box(width/2, planeH * 4, p.h/2);

  person = new Person(width/10, height - height/4, 15, 20);
}

void draw()
{
  background(0, 255, 255);

  //Grass
  noStroke();
  fill(0, 255, 0);
  rect(0, height/2, width, height/2);

  //Clouds
  for (int i = 0; i < clouds.length; i++)
  {
    clouds[i].display();
    clouds[i].move();
  }

  //Plane
  p.display();
  p.move(3);

  //Person
  person.display();

  //Box
  if (pressed == true)
  {
    if (hasTheBox == false)
    {
      //Box
      b.display();
    }

    float d = dist(person.location.x, person.location.y, b.x, b.fallPos);

    if (hasTheBox == false)
    {
      b.fall(10);
      person.moveToBox(b.x, b.fallPos, 0, 100);

      if (d < 1)
      {
        hasTheBox = true;
        b.move(p.x + p.w/1.75, planeH * 4);
      }
    } else
    {
      person.goBack(width/10, height - height/4);
      if (dist(person.location.x, person.location.y, width/10, height - height/4) < 1)
      {
        hasTheBox = false;
        pressed = false;
      }
    }
  } else
  {
    b.move(p.x + p.w/1.75, planeH * 4);
  }
}

void keyPressed()
{
  if (key == ' ')
  {
    pressed = true;
  }
}
