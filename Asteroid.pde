class Asteroid extends Floater  {   
  double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myColor = color(255);
    myCenterX = (int)Math.random()*300;
    myCenterY = (int)Math.random()*300;
    myXspeed = (float)Math.random()*0.5;
    myYspeed = (float)Math.random()*0.5;
  }
  void move(){
    turn(rotSpeed);
    super.move();
    super.show();
  }
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}
public double getPointDirection(){return myPointDirection;}
}
