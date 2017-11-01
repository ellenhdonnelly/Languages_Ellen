

class Superman {
//instance variables
float x;
float y;



//int diameter;

//constructor
Superman (float tempX, float tempY){ // temporary position
  x= tempX;
  y= tempY;

}

void display (){
    image(man,x,y);
    x = mouseX;
}

void up (){ // superman is flying
  frameRate(120);
    if ( y<0 ){
    y = height; }
    else {
      y--;
    }
  }
    

void skip(){
  if (keyPressed) {
    if(key == '1') {
      x = x + 250;
    }
  }
}

void superspeed(){
  if(keyPressed) {
    if(key == '2') {
      x = x + 50;
      y = y - 50;
    }
  }
}

void littleGuy() {
  if(keyPressed) {
    if(key == '3') {
    image(man,x,y, 300, 500);
    x = mouseX - 50;
    }
  }
}

  
  

}