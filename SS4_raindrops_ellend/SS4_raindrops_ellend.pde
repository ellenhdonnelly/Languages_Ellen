//'1' key changes color of house

PImage raindrop;
Raindrop[] raindrops = new Raindrop[11]; //raindrop array
House myHouse; //declare new object in House class



void setup (){
  size(1920,1080);
  
 

  myHouse = new House((random(0,700)), (random (0, height)));// assign random numbers to House parameters 
  raindrop = loadImage("raindrops6.png");
 
  //this for loop says to assign random numbers to raindrop parameters for all the raindrops in the array
 for (int i=0; i<raindrops.length; i++){
    raindrops[i] = new Raindrop(int(random(70,200)), int (random(90,120)), (random(2,15)));
  }
  
}

 void draw() {
   background(244,217,250);

  myHouse.display(); 
  myHouse.changeColor();

  
// this for loop says that for all the objects in the raindrop array, display them, and make them fall
  for(int i=0; i<raindrops.length;i++){
   raindrops[i].display();
   raindrops[i].fall();
    

  
  
     
 }

   

 }