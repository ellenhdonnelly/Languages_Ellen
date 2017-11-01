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