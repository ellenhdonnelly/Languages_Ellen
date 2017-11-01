class House {
 //variables 
float houseWidth;
float houseHeight;
float houseX;
float houseY;
float roofY;
float doorX;
float doorY;
float windowDiam; 
float windowHeight;
float r ; 
float g ;
float b;

//initiate house class parameters
House (float temphouseWidth, float temphouseHeight) {

houseWidth = temphouseWidth;
houseHeight = temphouseHeight;
houseX = houseWidth;
houseY = houseHeight - ((houseHeight - houseWidth)/2);
roofY = houseHeight;
doorX = (houseHeight - houseWidth)/2;
doorY = houseWidth;
windowDiam = 200; 
windowHeight = (houseY - ((roofY - houseY)/2));

}

//create display method
void display() {
  rectMode(CENTER);
  noStroke();
  fill(r + 2,g + 50,b = 50);
  rect(width/2, (height - houseY/2), houseX, houseY);
  triangle((width/2 - houseX/2), (height - houseY), (width/2 + houseX/2), height - houseY, width/2, (height - roofY));
  strokeWeight(7);
  stroke(r,g,b);
  rect(width/2, (height - doorY/2), doorX, doorY);
  ellipse(width/2, height - windowHeight, windowDiam, windowDiam); 
}

//create change color method
void changeColor() {
  if (keyPressed) {
    if (key=='1') {
     r = random(0,255); 
     g = random(0,255);
     b = random(0,255);
    }
  }
}

}