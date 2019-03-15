/** IMPORTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

import java.io.*;
import java.util.*;
import java.lang.*;
import java.lang.reflect.*;
import java.sql.Timestamp;
import processing.pdf.*;

/** EXPORT MODE  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final boolean PRODUCTION   = false;

/** SKECTH CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final static int S_TIME    = 180;
final static int S_WIDTH   = 800;
final static int S_HEIGHT  = 800;
final static int S_RANDOM  = 1;
final static int S_CROP    = 120;

/** ROSE CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final static int R_COUNT          = 14;
final static int R_MIN_NUMERATOR  = 1;
final static int R_MAX_NUMERATOR  = 9;
final static int R_MIN_DIVIDOR    = 1;
final static int R_MAX_DIVIDOR    = 9;
final static int R_MIN_RADIUS     = 100;
final static int R_MAX_RADIUS     = 400;
final static int R_MIN_SCALER     = 100;
final static int R_MAX_SCALER     = 200;  
final static int R_ALPHA          = 155;
final static int R_MIN_SPEED      = 180;
final static int R_MAX_SPEED      = 180;
final static int R_SPREAD         = 4;

/** COLOR PALETTE - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final NamedColor[] colors = {
  new NamedColor("smokey red",     color(255,  90,  80),  true),
  new NamedColor("pastell rose",   color(255, 231, 231),  true), 
  new NamedColor("ROSE_GLOWY",     color(243, 139, 209),  true),
  new NamedColor("purple rose",    color(162, 114, 196),  true),
  new NamedColor("PURPLE",         color(120,  30, 255),  false),
  new NamedColor("pastell yellow", color(255, 240, 218),  true), 
  new NamedColor("smokey blue",    color( 70,  92, 168),  true), 
  new NamedColor("BLUE_LIGHT",     color( 20, 100, 203),  false),
  new NamedColor("GREEN_MINT",     color( 99, 221, 218),  true),
  new NamedColor("petrol green",   color(  9, 104, 135),  true),
};

/** OUTPUT CONSTANTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

final Timestamp timestamp = new Timestamp(System.currentTimeMillis());
final String TITLE = "rosePainter";
final String PDFOUT   = "out/" + timestamp + "/" + TITLE + ".pdf";
final String TXTOUT   = "out/" + timestamp + "/" + TITLE + ".txt";
final String JPGOUT   = "out/" + timestamp + "/" + TITLE + ".jpg";

/** GLOBAL OBJECTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

PrintWriter output;
ArrayList<Rose> roses;
color[] palette;
