public void draw() 
{
  noLoop();

  if (PRODUCTION) 
  {
    beginRecord(PDF, PDFOUT); 
  }
  
  background(getRandomColor());
  renderRoses();
  crop(S_CROP);
  
  if (PRODUCTION) 
  {
    endRecord();
    renderOutput();
    save(JPGOUT);  
   exit();
  }
  print(roses.size());
}
