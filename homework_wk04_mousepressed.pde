///interactive rain clouds and rain over house
//version with keypress rain



void setup (){
  size(1920,1080);
  background(244,217,250);
}
  
  void draw() {
    rectMode(CENTER);
    noStroke();
    
    //house body
    fill(232,130,252);
    rect(960,830,500,500);
    triangle(710,580,1210,580,960,340);
    
    //door
    fill(109,40,124);
    rect(960,955,200,250);
    
    //window
    fill(166,233,234);
    ellipse(960,640,200,180);
    
    //clouds
    //fill(232,244,245,20);
    //ellipse(mouseX + 100, mouseY + 100, 200,200);
    //fill(232,244,245,20);
    //ellipse(mouseX + 100, mouseY - 100, 200,200);
    //fill(214,254,255,100);
    //ellipse(mouseX + 40, mouseY + 40, 100,100);
    //fill(255,255,255,80);
    //ellipse (mouseX + 20, mouseY, 200,100);
 
  }
  
  void mousePressed () {
   strokeWeight(10);
   line(mouseX,mouseY, mouseX, 1080);
   
    //clouds
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
  
  void keyPressed(){
    strokeWeight(5);
    stroke(111,140,219);
    line(mouseX, mouseY, mouseX, 1080);
  
  }