PImage[] myImageArray = new PImage[5];

void setup(){
  size(1920,1080);
  background(255);

for (int i=0; i<myImageArray.length; i++){
  myImageArray = loadImage( "fileName" + i + ".png");
}
}
void mousePressed(){
  image(myImageArray[(int)random(5)],0,0,width,height);
} 