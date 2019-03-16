ArrayList<Rose> initializeRosesRandomly(int number) 
{
  ArrayList<Rose> rosesList = new ArrayList<Rose>();

  
  for (int count = 0; count < number; count++) 
  {
    float ox = random(0, width);
    float oy = random(0, height);
    float n  = random(R_MIN_NUMERATOR, R_MAX_NUMERATOR);
    float d  = random(R_MIN_DIVIDOR, R_MIN_DIVIDOR);
    float r  = random(R_MIN_RADIUS, R_MAX_RADIUS);
    float s  = random(R_MIN_SPEED, R_MAX_SPEED);
    rosesList.add(new Rose(ox, oy, n, d, r, s));
  }
  
  return rosesList;
}
