Spaceship bob = new Spaceship();
Star [] nightSky = new Star [200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
}
  for(int i = 0; i <=10; i++)
  {
    rocks.add(i, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
   for(int i = 0; i < shots.size(); i ++){
    shots.get(i).move();
    shots.get(i).show();
   }
    for(int i = 0; i < rocks.size(); i ++){
    rocks.get(i).move();
    rocks.get(i).show();
      if(rocks.size() < 10)
        rocks.add(i,new Asteroid());
   }
  for(int i = 0; i < nightSky.length; i ++)
  {
    nightSky[i].show();
  }
  if(wIsPressed == true && aIsPressed == true)
  {
    bob.accelerate(0.15);
    bob.turn(-5.0);
  }
  if(wIsPressed == true && dIsPressed == true)
  {
    bob.accelerate(0.15);
    bob.turn(5.0);
  }
   if(wIsPressed == true)
  {
    bob.accelerate(0.15);
  }
   if(aIsPressed == true)
  {
    bob.turn(-5.0);
  }
  if(dIsPressed == true)
  {
    bob.turn(5.0);
  }
  for(int i = 0; i < rocks.size(); i ++)
  {
     rocks.get(i).move();
     rocks.get(i).show();
     float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
     if (d < 10)
       rocks.remove(i);
}  
  for(int i = 0; i < rocks.size(); i ++){
    for(int j = 0; j < shots.size(); j++){
      float k = dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)shots.get(j).getX(), (float)shots.get(j).getY());
      if (k < 10){
        rocks.remove(i);
        shots.remove(j);
        break;
      }
    }
  }
}
public void keyPressed()
{
  if(key == 'h')
  {
     bob.setXspeed(0);
     bob.setYspeed(0);
     bob.setXCenter((int)(Math.random()*401+1));
     bob.setYCenter((int)(Math.random()*401+1));
   }
  if(key == 'w')
  {
      wIsPressed = true;
  }
   if(key == 'a')
  {
      aIsPressed = true;
  }
   if(key == 'd')
  {
     dIsPressed = true;
  }
   else if(key == ' ')
   {
   shots.add(new Bullet(bob));
  }
}
void keyReleased()
{
  if(key=='w')
  {
    wIsPressed = false;
  }
  if (key == 'a')
  {
    aIsPressed = false;
  }
  else if (key == 'd')
  {
    dIsPressed = false;
  }
}
