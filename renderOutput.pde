void renderOutput() 
{
  String description = "My program " + TITLE + " created an arrangement of " + R_COUNT + 
  " mathematical rose curves with random origins, paramters and size. It was using ";
  
  String[] usedColors = documentPalette();
  for (int index = 0; index < usedColors.length; index++) 
  {
    if (index < usedColors.length - 2) 
    {
      description += usedColors[index] + ", ";
    }
    else if (index == usedColors.length - 2) 
    {
      description += usedColors[index] + " and ";
    }
    else if (index == usedColors.length - 1) 
    {
      description += usedColors[index];
    }
  }
  description += " colors to create this generative image. ";

  output.print(description);
  output.flush();
  output.close();
}
