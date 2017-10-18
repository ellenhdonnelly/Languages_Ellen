//declare variables
PImage beLate, chakraHead, bubbles, brainPic, core, dicknBalls, elephant, 
energy, feedback, focus, husband, invite, laurenFive, laurenFour, laurenOne, 
laurenThree, laurenTwo, lottery, lovelovelove, spine, theresNothing, thoughtsFive, 
thoughtsFour, thoughtsOne, thoughtsThree, thoughtsTwo, totems, trees, vibration, 
whoaBreathing, lastWord;

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
  
//create states
  imageMode(CENTER);
  if (state.equals("energy")){
    image(energy,width/2,height/2);
  } else if (state.equals("beLate")) {
    image(beLate,width/2,height/2);
  }else if (state.equals("core")){
    image(core,width/2,height/2);
  }else if (state.equals("dicknBalls")){
    image(dicknBalls,width/2,height/2);
  }else if (state.equals("elephant")){
    image(elephant,width/2,height/2);
  }else if (state.equals("feedback")){
    image(feedback,width/2,height/2);
  }else if (state.equals("focus")){
    image(focus,width/2,height/2);
  }else if (state.equals("husband")){
    image(husband,width/2,height/2);
  }else if (state.equals("invite")){
    image(invite,width/2,height/2);
  }else if (state.equals("laurenFive")){
    image(laurenFive,width/2,height/2);
  }else if (state.equals("laurenFour")){
    image(laurenFour,width/2,height/2);
  }else if (state.equals("laurenOne")){
    image(laurenOne,width/2,height/2);
  }else if (state.equals("laurenThree")){
    image(laurenThree,width/2,height/2);
  }else if (state.equals("laurenTwo")){
    image(laurenTwo,width/2,height/2);
  }else if (state.equals("lottery")){
    image(lottery,width/2,height/2);
  }else if (state.equals("lovelovelove")){
    image(lovelovelove,width/2,height/2);
  }else if (state.equals("spine")){
    image(spine,width/2,height/2);
  }else if (state.equals("theresNothing")){
    image(theresNothing,width/2,height/2);
  }else if (state.equals("thoughtsFive")){
    image(thoughtsFive,width/2,height/2);  
  }else if (state.equals("thoughtsFour")){
    image(thoughtsFour,width/2,height/2);  
  }else if (state.equals("thoughtsOne")){
    image(thoughtsOne,width/2,height/2); 
  }else if (state.equals("thoughtsThree")){
    image(thoughtsThree,width/2,height/2); 
  }else if (state.equals("thoughtsTwo")){
    image(thoughtsTwo,width/2,height/2);  
  }else if (state.equals("totems")){
    image(totems,width/2,height/2);  
  }else if (state.equals("trees")){
    image(trees,width/2,height/2);  
  }else if (state.equals("vibration")){
    image(vibration,width/2,height/2);  
  }else if (state.equals("whoaBreathing")){
    image(whoaBreathing,width/2,height/2);
  } else if (state.equals("lastWord")){
    image(lastWord, width/2, height/2);
  }
  
///draw circle at MouseX, mouseY
    noStroke();
    fill(r,g,b,175);
    ellipse(mouseX,mouseY, r,r);
  
}

////////////////////////////


void mousePressed() {

  //produce random numbers with every mouse press
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  background(255);
  
  //mouse position determines next slide.  
  if((mouseX < width/2) && (state.equals("energy"))) {
    state = "vibration";
  }else if ((mouseX > width/2) && (state.equals("energy"))) {
    state = "lottery";
  } else if ((mouseX > width/2) && (state.equals("lottery"))) {
     state = "spine";
  }else if ((mouseX < width/2) && (state.equals("lottery"))) {
    state ="elephant";
  }else if ((mouseX > width/2) && (state.equals("vibration"))) {
      state = "theresNothing";
  } else if ((mouseX < width/2) && (state.equals("vibration"))) {
    state ="feedback";
  }else if ((mouseX > width/2) && (state.equals("elphant"))) {
      state = "core";
  } else if ((mouseX < width/2) && (state.equals("elphant"))) {
    state ="beLate";
  }else if ((mouseX > width/2) && (state.equals("theresNothing"))) {
      state = "focus";
  } else if ((mouseX < width/2) && (state.equals("theresNothing"))) {
    state ="totems";
 }else if ((mouseX > width/2) && (state.equals("feedback"))) {
      state = "laurenOne";
  } else if ((mouseX < width/2) && (state.equals("feedback"))) {
    state ="invite";
}else if ((mouseX > width/2) && (state.equals("core"))) {
      state = "trees";
  } else if ((mouseX < width/2) && (state.equals("core"))) {
    state ="lovelovelove";
}else if ((mouseX > width/2) && (state.equals("beLate"))) {
      state = "laurenone";
  } else if ((mouseX < width/2) && (state.equals("beLate"))) {
    state ="totems";
}else if ((mouseX > width/2) && (state.equals("focus"))) {
      state = "husband";
  } else if ((mouseX < width/2) && (state.equals("focus"))) {
    state ="whoaBreathing";
    
///all roads lead to LaurenOne.  From Here there are no more user determined slides

} else if(state.equals("whoaBreathing")) {
  state = "laurenOne";
} else if(state.equals("elephant")) {
  state = "laurenOne";
} else if(state.equals("husband")) {
  state = "laurenOne";
} else if(state.equals("invite")) {
  state = "laurenOne";
} else if(state.equals("spine")) {
  state = "laurenOne";
}else if(state.equals("totems")) {
  state = "laurenOne";
}else if(state.equals("laurenOne")) {
  state = "laurenTwo";
}else if(state.equals("laurenTwo")) {
  state = "laurenFour";
}else if(state.equals("laurenFour")) {
  state = "laurenFive";
}else if(state.equals("laurenFive")) {
  state = "thoughtsTwo"; 
}else if(state.equals("thoughtsTwo")) {
  state = "thoughtsOne"; 
} else if(state.equals("thoughtsOne")) {
  state = "thoughtsFive"; 
} else if(state.equals("thoughtsFive")) {
  state = "thoughtsFour"; 
} else if(state.equals("thoughtsFour")) {
  state = "lastWord"; 
}

}