/** IMPORTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
import processing.pdf.*;
import java.sql.Timestamp;
import java.util.Date;

/** SKECTH CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
final boolean PRODUCTION = false;
final static int EXPOSED_FRAME    = 10;
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
final static int R_MAX_RADIUS     =   400;
final static int R_MIN_SCALER     = 100;
final static int R_MAX_SCALER     = 200;
final static int R_ALPHA          = 255;
final static int R_MIN_SPEED      = 180;
final static int R_MAX_SPEED      = 180;

ArrayList<Rose> roses = new ArrayList<Rose>();


/** COLOR CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
final color C_RED_SMOKEY      = color(255,  90,  80);
final color C_ROSE_PASTELL    = color(255, 231, 231); 
final color C_ROSE_GLOWY      = color(243, 139, 209); 
final color C_ROSE_PURPLE     = color(162, 114, 196);
final color C_PURPLE          = color(120,  30, 255); 
final color C_YELLOW_PASTELL  = color(255, 240, 218);
final color C_BLUE_SMOKEY     = color( 70,  92, 168); 
final color C_BLUE_LIGHT      = color( 20, 100, 203); 
final color C_GREEN_MINT      = color( 99, 221, 218); 
final color C_GREEN_PETROL    = color(  9, 104, 135); 

final color[] palette = {  
  C_RED_SMOKEY, C_ROSE_PASTELL, C_BLUE_SMOKEY
};

/** OUTPUT CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
Timestamp timestamp   = new Timestamp(System.currentTimeMillis());
final String PDFOUT   = "out/" + timestamp + "/" + "rosePainter" + ".pdf";
final String TXTOUT   = "out/" + timestamp + "/" + "rosePainter" + ".txt";
final String JPGOUT   = "out/" + timestamp + "/" + "rosePainter" + ".jpg";
PrintWriter output;


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
  crop(S_CROP);
  endRecord();
  renderOutput();
  save(JPGOUT);  
  if (PRODUCTION) {
    exit();
  }
}
