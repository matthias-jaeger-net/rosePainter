color getRandomColor() {
  int r = floor(random(0, palette.length));
  return palette[r];
}
