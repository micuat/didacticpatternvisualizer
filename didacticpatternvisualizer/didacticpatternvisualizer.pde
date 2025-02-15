import oscP5.*;
import netP5.*;

OscP5 osc;

ArrayList<Sound> sounds = new ArrayList<Sound>();
ArrayList<Cycle> cycles = new ArrayList<Cycle>();

float alturaBar;
float offsetSubdivision = 40;

int connectionTotal = 4; // set total tracks (Number of Tidal connections to represent)
float movSequenser= 5; // set grid speed (higher speed makes time wider)
float sizeMin = 10;
float sizeMax = 40;

float xOffset = 0;
float lastPos = 0;

void setup() {
  osc = new OscP5(this, 1818);  
  size(1200,360);
  //fullScreen(P3D, 2);
  alturaBar = height/connectionTotal;
  noStroke();
  fill(0);  
  textSize(18);
}



void draw() {
  background(0);
  fill(255);
  rect(0,0,width,height);
  fill(228);
  noStroke();
  
  for(int y=0; y<(connectionTotal*0.5); y++ ) {
    rect(0, y*alturaBar*2, width, alturaBar);
  }
  translate(0,0);
  for(int i=0; i<sounds.size() ; i++) {
    if ( sounds.get(i)!= null) { sounds.get(i).draw(); }
  }  
  for(int i=0; i<cycles.size() ; i++) {
    if ( cycles.get(i)!= null) { cycles.get(i).draw(); }
  }
}
