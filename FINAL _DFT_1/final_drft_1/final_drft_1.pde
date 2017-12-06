
import processing.video.*;
float r = 255;
float g = 255;
float b = 255;

PImage still;



Capture video;
Timer timer;

void captureEvent(Capture video) {
  video.read();
}

void setup() {
  size (900,900);
  background(0);
  video = new Capture(this, 320, 240);
  video.start(); 
  timer = new Timer(2500);
  timer.start();
  //still = loadImage("frames00041.png");
 
}



void draw() {
  imageMode(CENTER);
  //image(still, 200, 200);
  tint(r,g,b);
  image(video, width/2, height/2);
  frameRate(10);
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  if (timer.isFinished()) {
    saveFrame("data/img###");
    timer.start();
    
  }
}

class Timer {
  int savedTime;
  int totalTime;

  Timer (int tempTotalTime) {
    totalTime = tempTotalTime;
  }

  void start() {
    savedTime = millis();
  }
  boolean isFinished() {
    int passedTime = millis() - savedTime;
    if (passedTime> totalTime) {
      return true;
    } else {
      return false;
    }
  }
}