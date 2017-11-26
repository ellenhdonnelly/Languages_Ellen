//anti-procrastination program
//click on clock to get a kick in pants


//import sound library
import processing.sound.*;

//create sound reference
SoundFile doIt;
//create image
PImage stop;
//create clock of Clock class
Clock clock;


//create window, load sound file, load image, create clock with parameters
void setup() {
  size (200,200);
  doIt = new SoundFile( this, "shiaClip.mp3");
  stop = loadImage ("stop.jpg");
  clock = new Clock (width/2, (height/2 - 20), 40);
}

//display image, display clock so that color changes according to mouseX and mouseY
void draw() {
  image(stop, 0, 0);
  clock.display(mouseX, mouseY);
  
}

//mouse event--- play audio file if mouseX, mouseY are within clock.contains parameters
void mousePressed() {
  if (clock.contains(mouseX, mouseY)) {
 doIt.play();
  }
}

//create Clock class
class Clock {
  float x;
  float y;
  float r;
  
  Clock(float x_, float y_, float r_) {
    x = x_;
    y = y_;
    r = r_;
  }

//if points are within clock, return true, if not, return false
boolean contains(float mx, float my) {
  if (dist(mx, my, x, y) < r) {
    return true;
  } else { 
    return false;
  }
}

//if mouse is on clock, make one color, if mouse is outside of clock, make another color.  
//Draw elipse
void display(float mx, float my) {
  if (contains(mx, my)) {
    fill (218,151,227,120);
  } else { 
    fill (170, 35, 173, 220);
  } 
  noStroke();
  ellipse(x,y,r,r);
}
}