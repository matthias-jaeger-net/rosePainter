/** IMPORTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

import java.io.*;
import java.util.*;
import java.lang.*;
import java.lang.reflect.*;
import java.sql.Timestamp;
import processing.pdf.*;

/** EXPORT MODE  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

/** SKECTH CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final static int S_TIME    = 266;
final static int S_WIDTH   = 800;
final static int S_HEIGHT  = 800;
final static int S_RANDOM  = 3;
final static int S_CROP    = 120;

/** ROSE CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final static int R_COUNT          = 48;
final static int R_MIN_NUMERATOR  = 1;
final static int R_MAX_NUMERATOR  = 9;
final static int R_MIN_DIVIDOR    = 1;
final static int R_MAX_DIVIDOR    = 9;
final static int R_MIN_RADIUS     = 50;
final static int R_MAX_RADIUS     = 400;
final static int R_MIN_SCALER     = 100;
final static int R_MAX_SCALER     = 200;  
final static int R_ALPHA          = 180;
final static int R_MIN_SPEED      = 180;
final static int R_MAX_SPEED      = 180;
final static int R_SPREAD         = 4;

/** COLOR PALETTE - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final NamedColor[] colors = {
  new NamedColor("smokey red",     color(255,  90,  80),  false),
  new NamedColor("pastell rose",   color(255, 231, 231),  true), 
  new NamedColor("glowy rose",     color(243, 139, 209),  false),
  new NamedColor("darker rose",    color(162, 114, 196),  false),
  new NamedColor("darker purple",  color(120,  30, 255),  false),
  new NamedColor("pastell yellow", color(255, 240, 218),  true), 
  new NamedColor("smokey blue",    color( 70,  92, 168),  true), 
  new NamedColor("darker blue",    color( 70,  92, 240),  true), 
  new NamedColor("light blue",     color( 20, 100, 203),  true),
  new NamedColor("mint green",     color( 99, 221, 218),  true),
  new NamedColor("petrol green",   color(  9, 104, 135),  false),
};

/** OUTPUT CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final Timestamp timestamp = new Timestamp(System.currentTimeMillis());
final String TITLE = "rosePainter";
final String PDFOUT   = "./out/" + timestamp + "/" + TITLE + ".pdf";
final String TXTOUT   = "./out/" + timestamp + "/" + TITLE + ".txt";
final String JPGOUT   = "./out/" + timestamp + "/" + TITLE + ".jpg";

/** GLOBAL OBJECTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

PrintWriter output;
ArrayList<Rose> roses;
color[] palette;
