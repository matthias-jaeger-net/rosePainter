String[] documentPalette() {
  String[] Palette = new String[colors.length];
  for (int index = 0; index < Palette.length; index++) {
    Palette[index] = colors[index].Name;
  }
  return Palette;
}
