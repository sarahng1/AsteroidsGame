class Bullet extends Floater {
  public Bullet(Spaceship mySpaceship) {
    myCenterX = mySpaceship.getMyCenterX(); 
    myCenterY = mySpaceship.getMyCenterY();
    myXspeed = mySpaceship.getXspeed ();
    myYspeed = mySpaceship.getYspeed ();
    myPointDirection = mySpaceship.getPointDirection ();
    myColor = color(233, 242, 53);
    accelerate(6);
  }
  public void show () {
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
 
}
