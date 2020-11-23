import processing.sound.*; 
  PFont font;
  int value = 0;
  int val = 0;
  float opacity;
  boolean isMouseReleased;
  PImage bed;
  PImage bedLightsOut;
  PImage PatientRoom;
  PImage Hallway1;
  PImage Hallway2;
  PImage Reception;
  int waitTime;
  boolean showingText;
  int whatText;
  float lightState;
  int lightStateCooldown;

  
  
  SoundFile SoundScapeFloor1;
  SoundFile menuClick;
  SoundFile neonBuzz;

  
void setup()
{
  smooth();
  sceneLoader = 0;
  fullScreen();
  font = createFont("horroroid.ttf",100);
  bed = loadImage ("Bed.png");
  bedLightsOut = loadImage ("BedLightsOut.png");
  PatientRoom = loadImage ("PatientRoom.png");
  Hallway1 = loadImage ("Hallway1.jpg");
  Hallway2 = loadImage ("Hallway2.jpg");
  Reception = loadImage ("Reception.jpg");
  
  menuClick = new SoundFile(this,"MenuClickSound.wav");
  SoundScapeFloor1 = new SoundFile(this , "Noisescape0.1.wav");
  neonBuzz = new SoundFile(this, "NeonBuzz.wav");
  
  waitTime = 0;
  opacity = 0;
  hasLegAttached = false;
}
void draw()
{
  if (val != value) {value = val; isMouseReleased = true;} else {isMouseReleased = false;}
  if(sceneLoader == 0)
  {
    {
      //startmenu
      background(0);
      fill(255);
      textFont(font);
      textAlign(CENTER,CENTER);
      text("The Limb Collector",960,150);
      textFont(font,60);
      if(mouseX > 900 && mouseX < 1020 &&mouseY > 480 && mouseY < 530){
        
        fill(201, 47, 36);
        text("Start",960,500);
        fill(255);
        if (isMouseReleased == true)
        { 
        SoundScapeFloor1.loop(1,0.1); 
        sceneLoader = 3;
        }
        if (mousePressed == true) {
          if (menuClick.isPlaying()== false) {menuClick.play();}
          fill(10);
          text("Start",960,500);
          fill(255);
        }
      }
      else {text("Start",960,500);}
           if(mouseX > 870 && mouseX < 1050 &&mouseY > 580 && mouseY < 630){
        fill(201,47,36);
        text("Controls",960,600);
        fill(255);
        if (isMouseReleased == true){ sceneLoader = 1;}
        if (mousePressed == true) {
          if (menuClick.isPlaying()== false) {menuClick.play();}
          fill(10);
          text("Controls",960,600);
          fill(255);
        }
      }
      else {text("Controls",960,600);}
           if(mouseX > 885 && mouseX < 1030 &&mouseY > 680 && mouseY < 730){
        fill(201,47,36);
        text("Options",960,700);
        fill(255);
        if (isMouseReleased == true){ sceneLoader = 2;}
        if (mousePressed == true) {
          if (menuClick.isPlaying()== false) {menuClick.play();}
          fill(10);
          text("Options",960,700);
          fill(255);
       
        }
      }
      else {text("Options",960,700);}
           if(mouseX > 920 && mouseX < 1000 &&mouseY > 780 && mouseY < 830){
        fill(201,47,36);
        text("Exit",960,800);
        fill(255);
        if (isMouseReleased == true){ exit();}
        if (mousePressed == true) {
          if (menuClick.isPlaying()== false) {menuClick.play();}
          fill(10);
          text("Exit",960,800);
          fill(255);
        }
      }
      else {text("Exit",960,800);}
    }
  }
  if (sceneLoader == 1)
  {
    println(mouseX,mouseY);
        background(0);
      fill(255);
      textFont(font);
      textAlign(CENTER,CENTER);
      text("The Limb Collector",960,150);
      textFont(font,60);
           if(mouseX > 915 && mouseX < 1000 &&mouseY > 780 && mouseY < 830){
        fill(201,47,36);
        text("Back",960,800);
        fill(255);
        if (isMouseReleased == true){ sceneLoader = 0;}
        if (mousePressed == true) {
          if (menuClick.isPlaying()== false) {menuClick.play();}
          fill(10);
          text("Back",960,800);
          fill(255);
        }
      }
      else {text("Back",960,800);}
  }
  if (sceneLoader == 2) 
  {
   println(mouseX,mouseY);
        background(0);
      fill(255);
      textFont(font);
      textAlign(CENTER,CENTER);
      text("The Limb Collector",960,150);
      textFont(font,60);
      text("Music",960,600);
      text("SFX",960,400);
           if(mouseX > 915 && mouseX < 1000 &&mouseY > 780 && mouseY < 830){
        fill(201,47,36);
        text("Back",960,800);
        fill(255);
        if (isMouseReleased == true){menuClick.play(); sceneLoader = 0;}
        if (mousePressed == true) {
          fill(10);
          text("Back",960,800);
          fill(255);
        }
      }
      else {text("Back",960,800);}
  }
  if (sceneLoader == 3)
  {
  background(0);
  textSize(200);  
  text("Where...",960,540);
  
  if (waitTime > 240){
  background (0);
  text("Where am I?...",960,540);}
  
  if (waitTime > 480){
  background(0);
  text("I feel weird...",960,540);}
  
  if (waitTime > 720){
  sceneLoader = 4;}
  
  if (waitTime > 180 && waitTime <= 240) {
    opacity += 4.25;}
    
  else if (waitTime > 420 && waitTime <= 480) {
    opacity += 4.25;}
    
  else if (waitTime > 660 && waitTime <= 720) {
    opacity += 4.25;}
    
    else {
      opacity = 0;}
  
  fill(0,0,0,opacity);
  rect(0,0,width,height);
  fill(255);
  waitTime += 1;
  if (opacity >= 255) {
  opacity = 255;}
  }

  if (sceneLoader == 4){
  if (lightState >= 40){image(bedLightsOut,0,0); neonBuzz.pause();}
  else{image(bed,0,0); neonBuzz.loop(1,0.1);}
  println(mouseX,mouseY);
  if(mouseX > 1544 && mouseX < 1865 &&mouseY > 458 && mouseY < 870){
    if (isMouseReleased == true){
      if (menuClick.isPlaying()== false) {menuClick.play();}
    showingText = true;
    whatText = 1;}
  }
    if(mouseX > 1220 && mouseX < 1500 &&mouseY > 400 && mouseY < 930){
      if (isMouseReleased == true){
        if (menuClick.isPlaying()== false) {menuClick.play();}
    showingText = true;
    whatText = 2;
    }
  }
      if(mouseX > 0 && mouseX < 375 &&mouseY > 666 && mouseY < 1080){
      if (isMouseReleased == true){
        if (menuClick.isPlaying()== false) {menuClick.play();}
    showingText = true;
    whatText = 3;
    sceneLoader = 5;
    }
      }
      
  }
  if (sceneLoader == 5)
  {
    println(mouseX,mouseY);
  image(PatientRoom,0,0);
    if(mouseX > 850 && mouseX < 1060 &&mouseY > 322 && mouseY < 730){
    if (isMouseReleased == true){
    if (menuClick.isPlaying()== false) {menuClick.play();}
    sceneLoader = 6; showingText = false; whatText = 0;}
  }
  }
  if (sceneLoader == 6)
  {
  image(Hallway1,0,0);
  println(mouseX,mouseY);
  if(mouseX > 1500 && mouseX < 1920 &&mouseY > 0 && mouseY < 1080){
  if (isMouseReleased == true){
  if (menuClick.isPlaying()== false) {menuClick.play();}
  showingText = false;
  whatText = 0;
  sceneLoader = 7;
  }
  }
  if(mouseX > 0 && mouseX < 400 &&mouseY > 0 && mouseY < 1080){
  if (isMouseReleased == true){
  if (menuClick.isPlaying()== false) {menuClick.play();}
  showingText = false;
  whatText = 0;
  sceneLoader = 8;
  }
  }
    if(mouseX > 0 && mouseX < 1920 &&mouseY > 900 && mouseY < 1080){
  if (isMouseReleased == true){
  if (menuClick.isPlaying()== false) {menuClick.play();}
  showingText = false;
  whatText = 0;
  sceneLoader = 5;
  }
  }
  }
  if (sceneLoader == 7)
  {
  println(mouseX,mouseY);
<<<<<<< Updated upstream
  image(Hallway2,0,0);
    if(mouseX > 760 && mouseX < 960 &&mouseY > 300 && mouseY < 665){
=======
  if (lightState >= 40){image(Hallway2LightsOut,0,0); neonBuzz.pause();}
  else{image(Hallway2,0,0); neonBuzz.loop(1,0.1);}
    if(mouseX > 760 && mouseX < 960 && mouseY > 300 && mouseY < 665){
>>>>>>> Stashed changes
  if (isMouseReleased == true && hasLegAttached == false){
  if (menuClick.isPlaying()== false) {menuClick.play();}
  showingText = true;
  whatText = 4;
  }
  }
    if(mouseX > 0 && mouseX < 1920 &&mouseY > 900 && mouseY < 1080){
  if (isMouseReleased == true){
  if (menuClick.isPlaying()== false) {menuClick.play();}
  whatText = 0;
  showingText = false;
  sceneLoader = 6;
  }
  }
  }
  
  if (sceneLoader == 8)
  {
  image(Reception,0,0);
  if(mouseX > 0 && mouseX < 1920 &&mouseY > 900 && mouseY < 1080){
  if (isMouseReleased == true){
  if (menuClick.isPlaying()== false) {menuClick.play();}
  whatText = 0;
  showingText = false;
  sceneLoader = 6;
  }
  }
  }
  
  if (showingText == true){
    fill(0,200);
    rect(360,1000,1200,100);
    fill(255);
    textSize(50);
    if (whatText == 1){text("The TV appears to be broken.",980,1040);}
    if (whatText == 2){text("The crutches seem hard to opperate without arms...",980,1040);}
    if (whatText == 3){text("You manage to get yourself into the wheelchair.",980,1040);}
    if (whatText == 4){text("Getting up the stairs proves to be impossible with one leg.",980,1040);}
}
lightStateCooldown++;
if (lightStateCooldown >= 10)
{
  lightState = random(50);
  lightStateCooldown = 0;
}
}
  

void mouseReleased() {
  if (value == 0) {
    value = 255;
  }
  else {
  value = 0;
  }
}
