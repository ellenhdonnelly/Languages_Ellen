///Conditionals and Loops
//User:Draw a storm but dont let it rain on the house!
//press any key, click and drag mouse


//variables for house color change
float r = 255;
float g = 255;
float b = 255;

//grass loop variables
int x = 10;
int spacing = 10;
int len = 40;
int endGrass = width;
int y = height + 940;


void setup (){
  size(1920,1080);
  background(244,217,250);
}
  //rain
 void keyPressed(){
    strokeWeight(5);
    stroke(111,140,219);
    line(mouseX, mouseY, mouseX, 1080);
  }
  
  //house
  void draw() {
    rectMode(CENTER);
    noStroke();
    
    //house body, mousedrag changes it to random color
    fill(r,g,b);
    rect(960,830,500,500);
    triangle(710,580,1210,580,960,340);
    
    //door
    fill(109,40,124);
    rect(960,955,200,250);
    
    //window
    fill(166,233,234);
    ellipse(960,640,200,180);
     
    //grass
    strokeWeight (2);
    stroke(0,247,114);
  
    while(x < width) {
    line(x, y, x, y + len);
    x = x + spacing;
  }

  }
  
  void mousePressed () {
 
    //clouds, appear grey and threatening on either side of house
    noStroke();
    
    if (mouseX < width/3) {
    fill (180);
    ellipse(mouseX + 100, mouseY + 100, 200,200);
    ellipse(mouseX + 100, mouseY - 100, 200,200);
    ellipse(mouseX + 40, mouseY + 40, 100,100);
    ellipse (mouseX + 20, mouseY, 200,100);
  }
  
  else if(mouseX > width * 0.66){
    fill (180);
    ellipse(mouseX + 100, mouseY + 100, 200,200);
    ellipse(mouseX + 100, mouseY - 100, 200,200);
    ellipse(mouseX + 40, mouseY + 40, 100,100);
    ellipse (mouseX + 20, mouseY, 200,100);
  }
  
    else {
      fill(232,244,245,20);
      ellipse(mouseX + 100, mouseY + 100, 200,200);
      fill(232,244,245,20);
      ellipse(mouseX + 100, mouseY - 100, 200,200);
      fill(214,254,255,100);
      ellipse(mouseX + 40, mouseY + 40, 100,100);
      fill(255,255,255,80);
      ellipse (mouseX + 20, mouseY, 200,100);
      line(mouseX,mouseY, pmouseX, 1080);
    }
  }
 
  
  //house is random color when mouse is dragged
  void mouseDragged(){
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
  }