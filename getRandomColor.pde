color getRandomColor() {
  final color[] palette = {
    //smokeyRed,
    color(255, 90, 80), 
    //pastelRose,
    color(255, 231, 231), 
    //glowyRose, 
    //color(243, 139, 209), 
    //purpelRose, 
    //color(162, 114, 196), 
    //pastelYellow,
    // color(255, 240, 218), 
    // smokeyBlue,
    color(70, 92, 168), 
    // purpleish 
    // color(120, 30, 255), 
    //mintyGreen, 
    // color(99, 221, 218), 
    //petrolGreen,
    color(9, 104, 135), 
    // lighter blue
    color(20, 100, 203),
  };
  int r = floor(random(0, palette.length));
  return palette[r];
}
