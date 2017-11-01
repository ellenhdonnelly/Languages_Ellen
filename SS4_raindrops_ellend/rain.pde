
//declare variables in raindrop class
class Raindrop {
  float xpos;
  float ypos;
  float w;
  float h;
  float yspeed;

  //initiate parameters of raindrop class
  Raindrop(float tempW, float tempH, float tempYspeed) {
    ypos = 0;
    w = tempW;
    h = tempH;
    yspeed = tempYspeed;
    xpos = 0;
  }
  
  //create display method
  void display(){
    image(raindrop, xpos , ypos, w, h);
  }
  
  //create fall method
  void fall (){
   xpos = mouseX;
   ypos = ypos + yspeed;
   if (ypos > height) {
     ypos = 0;
   }
    }
  }