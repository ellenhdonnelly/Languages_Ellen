//Total Motion interactive circle thingy
//Ellen Donnelly
//Example from book with a little bit of fanciness on ellipse drawn

//import video library
import processing.video.*;
Capture video;
PImage prevFrame; //declare prevFrame
float threshold = 50;


void setup() {
  size (320,240);
  video = new Capture(this, width, height);//start the live video up
  video.start();
  prevFrame = createImage(video.width, video.height, RGB); //create an image for PrevFrame variable
}

void captureEvent(Capture video) {
  prevFrame.copy(video,0,0,video.width,video.height, 0,0, video.width, video.height);
  prevFrame.updatePixels () ;
  video.read();
}

void draw() {
  background(0);
  image(video, 0,0);
  loadPixels (); //load video
  video.loadPixels();
  prevFrame.loadPixels();
  
  float totalMotion = 0; //calculate the total amount of motion of all pixels
  for (int i = 0; i < video.pixels.length; i ++) {
    color current = video.pixels[i];
    color previous = prevFrame.pixels[i];
    float r1 = red (current);
      float g1 = green (current);
      float b1 = blue (current);
      float r2 = red (previous);
      float g2 = green (previous);
      float b2 = blue (previous);
      
      float diff = dist(r1, g1, b1, r2, g2, b2);
      totalMotion += diff;
  }
  
  float avgMotion = totalMotion/video.pixels.length; //calculate average amount of motion of all pixels
  noStroke(); // make a circle with its radius relevant to the average amount of motion on screen
  fill (255,255,255,80);
  float r = avgMotion * 7;
  ellipse(mouseX, mouseY, r, r);
}