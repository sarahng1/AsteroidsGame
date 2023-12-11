Spaceship mySpaceship = new Spaceship ();
Star [] nightSky = new Star [500];
ArrayList <Asteroid> asteroids;
ArrayList <Bullet> shots = new ArrayList <Bullet> ();
public void setup() 
{
  asteroids = new ArrayList<Asteroid>();
  size (400,400);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star ();
  }
    for (int i = 0; i < 20; i++) {
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
    Asteroid dieAsteroid = asteroids.get(i);
    dieAsteroid.move();
    dieAsteroid.show();
  
    float distance = dist((float) dieAsteroid.getMyCenterX(), (float) dieAsteroid.getMyCenterY(), (float) mySpaceship.getMyCenterX(), (float) mySpaceship.getMyCenterY());
    if (distance < 35) {
        asteroids.remove(i);
    }
  }
  
  for (int j = shots.size() - 1; j >= 0; j--) {
    Bullet bigBullet = shots.get(j);
    bigBullet.move();
    bigBullet.show();

    for (int i = asteroids.size() - 1; i >= 0; i--) {
      Asteroid removeAsteroid = asteroids.get(i);
      float distance = dist((float)removeAsteroid.getMyCenterX(), (float)removeAsteroid.getMyCenterY(), (float)bigBullet. myCenterX,(float) bigBullet.myCenterY);

      if (distance < 20) {  // Adjust the value as needed for your collision detection
        // Remove both the asteroid and the bullet
        asteroids.remove(i);
        shots.remove(j);
        break;
      }
    }
  }
}

public void keyPressed () {
  if (key == 'd') {
    mySpaceship.turn(-10); 
  }
  else if (key == 'a') {
    mySpaceship.turn(10); 
  }
  else if (key == 'w') {
    mySpaceship.accelerate(0.2);
  }
  else if (key == 's') {
    mySpaceship.setXspeed(0);
    mySpaceship.setYspeed (0);
    mySpaceship.setCenterX((int)(Math.random()*400));
    mySpaceship.setCenterY ((int)(Math.random()*400));
    mySpaceship.setPointDirection ((int)(Math.random()*100));
  }
  else if (key == ' ') {
    shots.add(new Bullet(mySpaceship));
  }
}
