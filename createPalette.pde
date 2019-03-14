color[] createPalette() {
  color[] Palette = new color[colors.length];
  for (int index = 0; index < Palette.length; index++) {
    Palette[index] = colors[index].Color;
  }
  return Palette;
}
