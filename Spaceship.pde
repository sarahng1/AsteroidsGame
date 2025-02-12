class Spaceship extends Floater  
{   
    public Spaceship () {
      corners = 4;
      xCorners = new int [] {-8, 16, -8, -2};
      yCorners = new int [] {-8, 0, 8, 0};
      myCenterX = 200;
      myCenterY = 200;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      myColor = color(209, 125, 188);
    }
    public void setXspeed (double x) {
      myXspeed = x;
    }
    public void setYspeed (double y) {
      myYspeed = y;
    }
    public void setCenterX (int x) {
      myCenterX = x;
    }
    public void setCenterY (int y) {
      myCenterY = y;
    }
    public void setPointDirection (int x) {
      myPointDirection = x;
    }
     public double getMyCenterX() {
    return myCenterX;
  }

  public double getMyCenterY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public double getXspeed () {
    return myXspeed;
  }
  public double getYspeed (){
    return myYspeed;
  }
 }
