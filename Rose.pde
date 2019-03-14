class Rose {

  PVector              origin = new PVector(0, 0);
  ArrayList<PVector>   points = new ArrayList<PVector>();
  color                rcolor = getRandomColor();

  Rose(float ox, float oy, float n, float d, float r, float s) {
    origin.set(ox, oy);
   
    float angle = 0.0f;
    float k = n / d;
    while (angle < (TAU * d)) {
      float radius = cos(angle * k) * r;
      float x = cos(angle) * radius;
      float y = sin(angle) * radius;
      points.add(new PVector(x, y));
      angle += TAU / s;
    }
  }

  void update() {
    for (PVector P : points) 
      P.add(new PVector(random(-2, 3), random(-3, 0)));
  }

  void render() {
    update();
    strokeWeight(random(1, 4));
    stroke(rcolor, R_ALPHA);
    pushMatrix();
    translate(origin.x, origin.y);
    for (PVector v : points) 
      point(v.x, v.y);
    popMatrix();
  }
}
