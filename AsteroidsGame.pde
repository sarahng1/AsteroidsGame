Spaceship mySpaceship = new Spaceship ();
Star [] nightSky = new Star [500];
ArrayList <Asteroid> asteroids;

public void setup() 
{
  asteroids = new ArrayList<>();
  size (400,400);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star ();
  }
    for (int i = 0; i < 14; i++) {
      asteroids.add(new Asteroid());
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
  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid currentAsteroid = asteroids.get(i);
    currentAsteroid.move();
    currentAsteroid.show();
  
    float distance = dist((float) currentAsteroid.getMyCenterX(), (float) currentAsteroid.getMyCenterY(), (float) mySpaceship.getMyCenterX(), (float) mySpaceship.getMyCenterY());
    if (distance < 35) {
        asteroids.remove(i);
    }
  }

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
