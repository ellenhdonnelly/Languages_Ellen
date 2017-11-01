//original class superman is by "Manamai"
//methods I added "skip", "superspeed" and "littleGuy"...
//Title: "Superman Controller" by "Ellen" and "Manamai"

// Use '1', '2', and '3' keys for Superman movement




Superman mySuperman;

PImage man;
PImage sky;


void setup(){
  size(1080,720);
  //initialize objects by calling the constructor with for loop
  man = loadImage("man.png");
sky = loadImage("sky.jpg");

  mySuperman = new Superman (0,0);

  
  }


void draw (){

 background (255);
 imageMode(CENTER);
 image (sky,540,360);
   
   mySuperman.display();
   mySuperman.up();
   
   mySuperman.skip();
   mySuperman.superspeed();
   mySuperman.littleGuy();
}
  
  