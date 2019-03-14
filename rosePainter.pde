/** IMPORTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
import java.io.*;
import java.util.*;
import java.lang.*;
import java.lang.reflect.*;
import java.sql.Timestamp;
import processing.pdf.*;

final boolean PRODUCTION   = false;

/** SKECTH CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
final static int S_TIME    = 200;
final static int S_WIDTH   = 800;
final static int S_HEIGHT  = 800;
final static int S_RANDOM  = 3;
final static int S_CROP    = 120;

/** ROSE CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
final static int R_COUNT          = 12;
final static int R_MIN_NUMERATOR  = 1;
final static int R_MAX_NUMERATOR  = 9;
final static int R_MIN_DIVIDOR    = 1;
final static int R_MAX_DIVIDOR    = 9;
final static int R_MIN_RADIUS     = 100;
final static int R_MAX_RADIUS     = 400;
final static int R_MIN_SCALER     = 100;
final static int R_MAX_SCALER     = 200;  
final static int R_ALPHA          = 255;
final static int R_MIN_SPEED      = 180;
final static int R_MAX_SPEED      = 180;

ArrayList<Rose> roses = new ArrayList<Rose>();

/** COLOR PALETTE - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
final NamedColor[] colors = {
  new NamedColor("smokey red", color(255,  90,  80)),
  new NamedColor("pastelly rose", color(255, 231, 231)),
  //new NamedColor("ROSE_GLOWY", color(243, 139, 209)),
  new NamedColor("purple rose", color(162, 114, 196)),
  //new NamedColor("PURPLE", color(120,  30, 255)),
  new NamedColor("pastell yellow", color(255, 240, 218)),
  //new NamedColor("BLUE_SMOKEY", color( 70,  92, 168)),
  //new NamedColor("BLUE_LIGHT", color( 20, 100, 203)),
  //new NamedColor("GREEN_MINT", color( 99, 221, 218)),
  //new NamedColor("GREEN_PETROL", color(  9, 104, 135)),
};
color[] palette = createPalette();

/** OUTPUT CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
final String TITLE = "rosePainter";
Timestamp timestamp   = new Timestamp(System.currentTimeMillis());
final String PDFOUT   = "out/" + timestamp + "/" + TITLE + ".pdf";
final String TXTOUT   = "out/" + timestamp + "/" + TITLE + ".txt";
final String JPGOUT   = "out/" + timestamp + "/" + TITLE + ".jpg";
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
