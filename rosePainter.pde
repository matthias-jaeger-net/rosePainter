/** IMPORTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
import processing.pdf.*;
import java.sql.Timestamp;
import java.util.Date;

/** SKECTH CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
final static boolean EXPORTING    = false;
final static int EXPOSED_FRAME    = 30;
final static int S_WIDTH          = 800;
final static int S_HEIGHT         = 800;
final static int S_RANDOM         = 1;
final static int S_CROP           = 120;

/** ROSE CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
final static int R_COUNT          = 200;
final static int R_MIN_NUMERATOR  = 1;
final static int R_MAX_NUMERATOR  = 9;
final static int R_MIN_DIVIDOR    = 1;
final static int R_MAX_DIVIDOR    = 9;
final static int R_MIN_RADIUS     = 100;
final static int R_MAX_RADIUS     = 400;
final static int R_MIN_SCALER     = 100;
final static int R_MAX_SCALER     = 200;
final static int R_ALPHA          = 255;
final static int R_SPEED_MIN      = 180;
final static int R_SPEED_MAX      = 180;

/** OUTPUT CONSTANTS -  - - - - - - - - - - - - - - - - - - - - - - - - - - */
PrintWriter output;
Timestamp timestamp   = new Timestamp(System.currentTimeMillis());
final String PDFOUT   = "out/" + timestamp + "/" + "rosePainter" + ".pdf";
final String TXTOUT   = "out/" + timestamp + "/" + "rosePainter" + ".txt";
final String JPGOUT   = "out/" + timestamp + "/" + "rosePainter" + ".jpg";

/** OBJECTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
ArrayList<Rose> roses = new ArrayList<Rose>();


/** MAIN SKETCH -  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

public void settings() {
  size(S_WIDTH, S_HEIGHT);
}

public void setup() {
  randomSeed(S_RANDOM);
  initializeRoses(R_COUNT);
  output = createWriter(TXTOUT); 
}

public void draw() {
  noLoop();
  beginRecord(PDF, PDFOUT); 
  background(getRandomColor());
  renderRoses();
  crop();
  endRecord();
  renderOutput();
  save(JPGOUT);  
  exit();
}
