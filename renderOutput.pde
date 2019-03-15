void renderOutput() 
{
  String description; 
  
  description =  "Hello world! I'm #" + TITLE + " and I created a #painterly #generative #image for fun. ";
 
  description += "For this #painting I was using "; 
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
  description += " from the color palette. "; 
  
  description += "As #brusheffect I was using " + R_COUNT + " #mathematical #rose #curves. ";
  description += "A rose curves look and number of petals is definded by the paramters N, ranging from ";
  description += R_MIN_NUMERATOR + " to " + R_MAX_NUMERATOR + " and D ranging from ";
  description += R_MIN_DIVIDOR   + " to " + R_MAX_DIVIDOR + ". ";
  description += "I exposed the image for " + S_TIME + " interations ";
  description += " to finally render this painting on the canvas and created this message exposing all my global settings. ";



  output.print(description);
  output.flush();
  output.close();
}
