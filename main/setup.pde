public void setup() 
{
  randomSeed(S_RANDOM);
  palette = createPalette();
  roses = initializeRosesRandomly(R_COUNT);
  output = createWriter(TXTOUT);
}
