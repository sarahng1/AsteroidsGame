Spaceship mySpaceship = new Spaceship ();
Star [] nightSky = new Star [500];
public void setup() 
{
  size (400,400);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star ();
  }
}
public void draw() 
{
  background(234, 216, 235);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky [i].show();
  }
  mySpaceship.show();
  mySpaceship.move();
}

public void keyPressed () {
  if (key == '1') {
    mySpaceship.turn(-10); 
  }
  if (key == '2') {
    mySpaceship.turn(10); 
  }
  if (key == ' ') {
    mySpaceship.accelerate(0.2);
  }
  if (key == '3') {
    mySpaceship.setXspeed(0);
    mySpaceship.setYspeed (0);
    mySpaceship.setCenterX((int)(Math.random()*400));
    mySpaceship.setCenterY ((int)(Math.random()*400));
    mySpaceship.setPointDirection ((int)(Math.random()*100));
  }
}
