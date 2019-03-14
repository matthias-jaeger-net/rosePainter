import processing.pdf.*;
import java.sql.Timestamp;
import java.util.Date;

final static int COUNT            = 200;
final static int EXPOSED_FRAMES   = 30;

final static int R_MIN_NUMERATOR  = 1;
final static int R_MAX_NUMERATOR  = 9;

final static int R_MIN_DIVIDOR    = 1;
final static int R_MAX_DIVIDOR    = 9;

final static int R_MIN_RADIUS     = 100;
final static int R_MAX_RADIUS     = 100;

final static int R_MIN_SCALER     = 100;
final static int R_MAX_SCALER     = 100;

final static int R_ALPHA = 255;
final static int R_SPEED_MIN = 180;
final static int R_SPEED_MAX = 180;

ArrayList<Rose> roses = new ArrayList<Rose>();


Timestamp timestamp = new Timestamp(System.currentTimeMillis());
final String PDFOUT = "out/" + timestamp + "/" + "rosePainter" + ".pdf";
final String TXTOUT = "out/" + timestamp + "/" + "rosePainter" + ".txt";
final String JPGOUT = "out/" + timestamp + "/" + "rosePainter" + ".jpg";

PrintWriter output;

void setup() {
  size(800, 800);
  randomSeed(2);
  initializeRoses(COUNT);
  output = createWriter(TXTOUT); 
  beginRecord(PDF, PDFOUT); 
  background(getRandomColor());
  renderRoses();
  crop();
  endRecord();
  renderOutput();
  save(JPGOUT);  
  //exit();
}
