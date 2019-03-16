void renderOutput() 
{
  String description; 
  description = "'Done with that artwork you wanted', said #" + TITLE;
  description += " and opened the 'dist' folder on my local machine. ";
  description += " 'I have created a #painterly #generative #artwork using ";
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
  description += " from the palette', he shows me his latest canvas: 'Created at " + timestamp; 
  description += "' and explains that he brushed " + R_COUNT + " #mathematical #rose #curves ";
  description += "randomly on the #canvas. 'I was feeling like feeling-" + S_RANDOM;
  description += " and gave each #rose #curve the paramters N random(";
  description += R_MIN_NUMERATOR + " - " + R_MAX_NUMERATOR + ") and D random(";
  description += R_MIN_DIVIDOR   + " - " + R_MAX_DIVIDOR + ").', he said and continued, '";
  description += "It took me " + S_TIME + " lifecycles to create this #image for you, my friend.' ";
  description += " I thanked him and said that I'll post this on my #instagram, but I won't need to do much,";
  description +=  " because "+TITLE+" also created this message exposing all his global settings. ";
  description +=  "#processing #java #oop #generativeart #generativedesign #madewith code by man and machine ";
  output.print(description);
  output.flush();
  output.close();
}
