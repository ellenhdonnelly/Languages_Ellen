//this sketch is a book



//declare variables
PImage beLate, chakraHead, bubbles, brainPic, core, dicknBalls, elephant, 
energy, feedback, focus, husband, invite, laurenFive, laurenFour, laurenOne, 
laurenThree, laurenTwo, lottery, lovelovelove, spine, theresNothing, thoughtsFive, 
thoughtsFour, thoughtsOne, thoughtsThree, thoughtsTwo, totems, trees, vibration, 
whoaBreathing, lastWord;

String [] images = {"beLate", "chakraHead", "bubbles", "core", "dicknBalls", "elephant", 
"energy", "feedback", "focus", "husband", "invite", "laurenFive", "laurenFour", "laurenOne", 
"laurenThree", "laurenTwo", "lottery", "lovelovelove", "spine", "theresNothing", "thoughtsFive", 
"thoughtsFour", "thoughtsOne", "thoughtsThree", "thoughtsTwo", "totems", "trees", "vibration", 
"whoaBreathing"};
int index = int(random(images.length));

//String randomImage = images[index];


//initial state
String state = "energy";

//for random cursor color
float r = 255;
float g = 255;
float b = 255;

//////////////////////////////////

void setup(){
  size(1920,1080);
  background(255);

  
//load images
  lastWord = loadImage ("lastWord.jpg");
  beLate = loadImage ("beLate.jpg");
  brainPic = loadImage("brainPic.jpg");
  chakraHead =loadImage("chakraHead.jp");
  bubbles = loadImage("bubbles.jps");
  chakraHead = loadImage("chakraHead.jpg");
  core = loadImage("core.jpg");
  dicknBalls = loadImage("dicknBalls.jpg");
  elephant = loadImage("elephant.jpg");
  energy = loadImage("energy.jpg");
  feedback = loadImage("feedback.jpg");
  focus = loadImage("focus.jpg");
  husband = loadImage ("husband.jpg");
  invite = loadImage ("invite.jpg");
  laurenFive = loadImage("laurenFive.jpg");
  laurenFour = loadImage("laurenFour.jpg");
  laurenOne =loadImage ("laurenOne.jpg");
  laurenTwo = loadImage("laurenTwo.jpg");
  lottery = loadImage("lottery.jpg");
  lovelovelove = loadImage("lovelovelove.jpg");
  spine = loadImage ("spine.jpg");
  theresNothing =loadImage("theresNothing.jpg");
  thoughtsFive =loadImage("thoughtsFive.jpg");
  thoughtsFour =loadImage("thoughtsFour.jpg");
  thoughtsOne = loadImage ("thoughtsOne.jpg");
  thoughtsTwo =loadImage ("thoughtsTwo.jpg");
  totems=loadImage ("totems.jpg");
  trees = loadImage ("trees.jpg");
  vibration = loadImage("vibration.jpg");
  whoaBreathing =loadImage ("whoaBreathing.jpg");
  
}
////////////////////////////

void draw(){
  imageMode(CENTER);
  //image(images[index] width/2, height/2);
  println(images[index]);
  noStroke();
  fill(r,g,b,175);
  ellipse(mouseX,mouseY, r,r);
//create states

  //if (state.equals("randomImage")){
  //  image(randomImage,width/2,height/2);
  //}
  
 
  
}

////////////////////////////


void mousePressed() {

  //produce random numbers with every mouse press
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  background(255);
  index = index + 1;
  


}