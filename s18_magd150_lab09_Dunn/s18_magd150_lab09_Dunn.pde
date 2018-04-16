import processing.video.*;
import processing.sound.*;
//when I did brownnoise the sound cut off after a bit, ask why after class
PinkNoise noise;

Capture video;
PImage img;

void setup (){
  size(550,550);
  //image
  img = loadImage("mirror.jpg");
  //video
  println(Capture.list());
  video = new Capture(this,848,480);
  video.start();
  //sound
  noise = new PinkNoise(this);
  noise.play();
}

void captureEvent(Capture video){
  video.read();
}

void draw (){
  background(0);
  //image
  image(img, 0, 0, width, height);
  //I had to set the values below to such a high number, otherwise the image
  //for some reason wouldn't display right, did I do something wrong?
  image(img,40000,40000);
  filter(ERODE);
  
  //this causes the video picture to move
  tint(mouseX,mouseY,255);
  translate(width/2,height/2);
  imageMode(CENTER);
  rotate(PI/4);
  image(video,0,0,mouseX,mouseY);
  
  float vol= map(mouseX,0,width,0,1);
  noise.amp(vol);
  ellipse(mouseX,100,32,32);
}