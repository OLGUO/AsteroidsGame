class Spaceship extends Floater  {  
  public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = color(255);
      myCenterX = 250;
      myCenterY = 250;
}
public void setXspeed(double x){
  myXspeed = x;
}
public void setXCenter(double x2){
  myCenterX = x2;
}
public void setYCenter(double y2){
  myCenterY = y2;
}
public void setYspeed(double y){
  myYspeed = y;
}
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}
public double getPointDirection(){return myPointDirection;}
}
