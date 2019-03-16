public void draw() 
{
  noLoop();
  beginRecord(PDF, PDFOUT);
  background(getRandomColor());
  renderRoses();
  Rose central = new Rose(width/2, height/2, 9, 3, width/2, 200);
  for (int i = 0; i < S_TIME; i++) 
  {
    central.render();
  }

  crop(S_CROP);
  endRecord();
  renderOutput();
  save(JPGOUT);  
  //exit();
}
