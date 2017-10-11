import processing.video.*;


PShape blobby;
PImage babyMonkey;
PImage dogsOnBoard;
PImage mrBean;
PImage foot;
PImage whatever;
PImage cool;
String state = "foot";


void setup(){
  size(720,480);
//  babyMonkey = loadImage ("images.jpeg");
  blobby = loadShape ("blobby.svg");
  dogsOnBoard = loadImage("maxresdefault.jpg");
  mrBean = loadImage("mrBean.jpg");
  foot = loadImage("footCoan2.jpg");
  whatever = loadImage("whatever.jpg");
  cool = loadImage ("cool.jpg");
  //ladies = new Movie(this, "ladies.mov");
  //ladies.loop();
}

void draw(){
  if(state.equals("foot")) {
  image(foot,0,0);
  } else if (state.equals("blob")){
  shape(blobby, 50,50);
  } else if (state.equals("dogs")) {
    image(dogsOnBoard, 0, 0);
  } else if (state.equals ("bean")) {
    image(mrBean, 0, 0);
  } else if (state.equals ("whatever")) {
    image (whatever, 0,0);
}
else if (state.equals ("cool")) {
  image(cool, 0,0);
}
}
void mousePressed() {
  if((mouseX < width/2) && (state.equals("foot"))) {
     state = "blob";
  } 
  else if ((mouseX > width/2) && (state.equals("foot"))) {
     state = "dogs";
  }
  else if ((mouseX < width/2) && (state.equals("dogs"))) {
    state ="bean";
  }
    else if ((mouseX > width/2) && (state.equals("dogs"))) {
      state = "cool";
  }
  else if (state.equals("bean")) {
    state = "whatever";
  }
}