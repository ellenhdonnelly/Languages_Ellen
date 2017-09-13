size(1100,700);
background(255,174,88);



strokeWeight(10);
stroke(121,240,233,180);//color and line weight

line(0,350,550,350);
line(0,350,550,500);
line(550,350,550,500);
//mouth

noStroke();
fill(255,255,25,100);
ellipse(550,350,500,500);//big yellow circle

strokeWeight(10);
stroke(121,240,233,180);//color and line weight

noFill();
ellipse(500,250,50,50); //eyeball


rectMode(CENTER);
rect(550,300,800,550);//large rectangle
rect(550,300,400,500); //small rectangle 

stroke(255,0,0,10);
fill(255,0,0,50);
triangle(0,350,550,350,550,500); //center triangle

//rect(550,30,400,25);//top rectangle
rect(550,600,400,400); //bottom rectangle

stroke(255,0,0);
noFill();

arc(500, 500, 1000, 1000, 0, PI+QUARTER_PI, PIE);///big arc
//fill(31,93,191,100);
arc(500,500,500,500,0, PI+QUARTER_PI, OPEN);///little arc