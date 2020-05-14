Cloud[] clouds = new Cloud[5];
Plane p;

void setup()
{
  size(500,500, P2D);
  
  for(int i = 0 ; i < clouds.length ; i++)
  {
    clouds[i] = new Cloud(random(0, width), random(30, height/2 - 30), 100, 60);
  }
  
  float planeW = 120;
  float planeH = planeW/4;
  
  p = new Plane(width/2, planeH * 2, planeW, planeH);
}

void draw()
{
  background(0, 255, 255);
  
  //Grass
  noStroke();
  fill(0, 255, 0);
  rect(0, height/2, width, height/2);
  
  for(int i = 0 ; i < clouds.length ; i++)
  {
    clouds[i].display();
    clouds[i].move();
  }
  
  p.display();
  p.move(3);
}
