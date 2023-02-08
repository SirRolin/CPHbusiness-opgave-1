color red, yellow, green, off;
color[] lights;
float center, middle;
float lightsOffset;
int frameLimit = 10;

void setup(){
  frameRate(frameLimit);
  size(500,500);
  red = color(255, 0, 0);
  yellow = color(255, 255, 0);
  green = color(0, 255, 0);
  off = color(63);
  center = width/2;
  middle = height/2;
  lightsOffset = height*0.25;
  lights = new color[]{off, off, off};
}

void draw(){
  //// Clearing the frame
  background(255);
  
  //// Preparing the brush
  stroke(0);
  strokeWeight(width/25);
  noFill();
  
  //// Chassis
  rect(width * 0.3 , height * 0.1, width * 0.4 , height * 0.8);
  
  //// Pole
  line(width * 0.45, height * 0.9, width * 0.45, height * 1.0);
  line(width * 0.55, height * 0.9, width * 0.55, height * 1.0);
  
  //// Change States
  int LocalFrame = (int)(frameCount%(30*frameLimit)/frameLimit);
  if(frameCount%frameLimit==0) {
    println(LocalFrame);
  }
  switch(LocalFrame){
     case 0: lights[0] = red; lights[1] = off; break;
     case 12: lights[1] = yellow; break;
     case 15: lights[0] = off; lights[1] = off; lights[2] = green; break;
     case 27: lights[1] = yellow; lights[2] = off;
  }
  
  
  ////Lights
  for(int ite = 0; ite < lights.length;ite++){
    fill(lights[ite]);
    ellipse(center, middle + (ite-1) * lightsOffset, lightsOffset * 0.8, lightsOffset * 0.8);
  }
  
  
}
