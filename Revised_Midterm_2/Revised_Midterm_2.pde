///use an array to load all your files

PImage [] Secret = new PImage [31];

int whichSecret = 7;
int i= 0;

//for random cursor color
float r = 255;
float g = 255;
float b = 255;

//////////////////////////////////

void setup(){
  size(1920,1080);
  background(255);

//use a for loop to load images
for( i=0; i< 31;i++) {
      Secret[i]=loadImage("Secret"+(i+1)+ ".jpg");
}
  
}
////////////////////////////

void draw(){
  imageMode(CENTER);
  image(Secret[whichSecret], width/2, height/2); 
  noStroke();
  fill(r,g,b,175);
  ellipse(mouseX,mouseY, r,r);
  println(whichSecret);

 
  
}

////////////////////////////


void mousePressed() {

  //produce random numbers with every mouse press
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  background(255);
  
//
   whichSecret=int(random(0,31));
  


}