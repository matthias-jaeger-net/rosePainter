void initializeRoses(int number) {
 for (int i = 0; i < number; i++) {
    float ox = random(0, width);
    float oy = random(0, height);
    
    float n = floor(random(R_MIN_NUMERATOR, R_MAX_NUMERATOR));
    float d = floor(random(R_MIN_DIVIDOR, R_MIN_DIVIDOR));
    
    float r = random(R_MIN_RADIUS, R_MAX_RADIUS);
    float s = random(R_SPEED_MIN, R_SPEED_MAX);
    
    roses.add(new Rose(ox, oy, n, d, r, s));
  }
}
