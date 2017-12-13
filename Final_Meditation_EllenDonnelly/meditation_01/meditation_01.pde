 /// Go here to see live feed of resultz----https://twitter.com/Mdtation_4_Ppl
 
 //import Procesing library Simple Tweet

import gohai.simpletweet.*;
SimpleTweet simpletweet;



int circleSize = 100;
int circleX = 100;
int circleY = 100;
float fontSize;
float fontSize2;
float fontSize3;
float r = 255;
float b = 255;
float g = 255;
float r2 = 255;
float g2 = 255;
float b2 = 255;
float textY = 0;
String[] who = {"who weep", "who have driver's licesnses", "who wear seatbelts", "who can't access", "who aren't housebroken", "who are wild people", "who smell sulfur", "who don’t have narcissistic personality disorder","who see","who visualize","letting yourself see", "understanding what you see", "who see so much they nauseate themselves", "who meditate", "who have thrown their phones across the room", "with ideas", "independent actors",  "looking through a keyhole", "who are - after all - dependent on others", "with ancestry", "who are sex-workers hiding in plain sight", "sticking to their story come hell or high water", "letting your hair down when you see the writing on the walls but have to choose from the menu in front of you", "living somewhere hollowed out", "who are urban dwellers at the dawn of a new era", "who feel like children in interminable childhood", "who cum for artifice and are perfectly fine with it", "suckers who don’t mind", "who forgot"," forgotten people", "who get too worked up", "who stopped caring a long time ago", "who notice trends", "who are always here", "who see the trees through the woods", "who see the woods through the trees", "who are lost in the weeds", "who are weedwhacking",  "who try", "who try to try", "who try to change", "who can change only themselves", "who have no control over anything", "who see can only the road ahead of them",  "who want to turn on the lights", "who turn up the sound", "who comment", "who read the comments", "who capture",  "who archive", "who are storing the news in their bodies , in their shoulders, in their hips, in their faces"};
PFont font;
PFont font2;
int whichWho;
float i = who.length;




void setup() {
  size(900, 700);
  
  ///get twitter account info
  simpletweet = new SimpleTweet(this);
  simpletweet.setOAuthConsumerKey("uyOnTYVOIMuf2UdxbFkHP7UsH");
  simpletweet.setOAuthConsumerSecret("bVLYYUmkNk0xEbVLCu8m6gCoezlcmh24KZfQtny1vIMf7hUtNT");
  simpletweet.setOAuthAccessToken("939189456929787905-Fofl9L17QKhFS3wZglqiE8vDqgL7BKw");
  simpletweet.setOAuthAccessTokenSecret("u3wiFf13K8gF0zgjeHEEHxKbZMpyVJ9uFBAf6adjR88Yt");
 
  font = createFont("ComicChub.ttf", 24);
  font2 = createFont("earthorbitertitleital.ttf", 24);
  textFont(font);
  r = random(50,60);
  g = random(50,60);
  b = random(0,255);
  r2 = random(0,255);
  g2 = random(0,255);
  b2 = random(0,255);

}

void draw() {
  println(i);
  background(0);
  fill(r2, g2, b2);
  //i = random(who.length);
  fontSize = random(25,75);
  fontSize2 = random(24,50);
  fontSize3 = random(40,100);
  
  /////////
  textFont(font);
  textSize(fontSize); 
  text("meditation",0,circleY,300,100);
  circleSize = circleSize + 1;
  if (circleSize > 300) {
    circleSize = 200;
  }
  circleY = circleY + 1;
  if (circleY > (height-200)) {
    circleY = 75;
   }
   
   /////
   textSize(fontSize2);
   text("for people", mouseX, mouseY, pmouseX, pmouseY);
   
   whichWho = int(random(0,who.length));
   textSize(fontSize3);
   text (who[whichWho], width/2, textY, width/2, height);
   if (textY > height){
     textY = 0;
   }
   textY = textY + 1;
     
////
  textSize(55);
  textFont(font2);
  fill(255,0,0);
  text("PRESS ANY KEY TO READ", 0,0, width, 75);
   
   

}
 

void keyPressed() {
  String tweet = simpletweet.tweetImage(get(), "#lostinweeds");
  println("Posted " + tweet);
}