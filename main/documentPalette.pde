String[] documentPalette() 
{
  ArrayList<NamedColor> usedColors = new ArrayList<NamedColor>();

  for (int index = 0; index < colors.length; index++) 
  {
    if (colors[index].Use == true) 
    {
      usedColors.add(colors[index]);
    }
  }
  
  String[] Palette = new String[usedColors.size()];


  for (int index = 0; index < Palette.length; index++) 
  {
      Palette[index] = usedColors.get(index).Name;
  }
  return Palette;
}
