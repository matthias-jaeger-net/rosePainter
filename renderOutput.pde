void renderOutput() {
  output.print("My program " + TITLE + " was initialized at " + timestamp + " and ");
  output.print(" sucessfully created a " + width + "x" + height + " canvas width a crop facto of " + S_CROP + ". ");
  output.print(" What you see is an arrangement of " + R_COUNT + " mathematical rose curves with random origins, paramters and size. ");
  output.print(" All points of these curves are ");
  String[] usedColors = documentPalette();
  for (String name : usedColors) {
    output.print(name + ", ");
  }
  output.print(" and moved " + S_TIME + " frames.");

  output.flush();
  output.close();
}
