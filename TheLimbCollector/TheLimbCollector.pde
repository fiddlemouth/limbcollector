  PFont font;
  int value = 0;
  int val = 0;
  int fadeOut;
  boolean isMouseReleased;
  PImage bed;
  PImage bedLightsOut;
  
void setup()
{
  sceneLoader = 0;
  fullScreen();
  font = createFont("horroroid.ttf",100);
  bed = loadImage ("Bed.png");
  bedLightsOut = loadImage ("BedLightsOut.png");
}
void draw()
{
  if (val != value) {value = val; isMouseReleased = true;} else {isMouseReleased = false;}
  println(val, value);
  if(sceneLoader == 0)
  {
    {
      //startmenu
      background(0);
      fill(255);
      textFont(font);
      textAlign(CENTER,CENTER);
      text("Input Title Here",960,150);
      textFont(font,60);
      if(mouseX > 900 && mouseX < 1020 &&mouseY > 480 && mouseY < 530){
        fill(100);
        text("Start",960,500);
        fill(255);
        if (isMouseReleased == true)
        { 
        sceneLoader = 3;
        }
        if (mousePressed == true) {
          fill(10);
          text("Start",960,500);
          fill(255);
        }
      }
      else {text("Start",960,500);}
           if(mouseX > 870 && mouseX < 1050 &&mouseY > 580 && mouseY < 630){
        fill(100);
        text("Controls",960,600);
        fill(255);
        if (isMouseReleased == true){ sceneLoader = 1;}
        if (mousePressed == true) {
          fill(10);
          text("Controls",960,600);
          fill(255);
        }
      }
      else {text("Controls",960,600);}
           if(mouseX > 885 && mouseX < 1030 &&mouseY > 680 && mouseY < 730){
        fill(100);
        text("Options",960,700);
        fill(255);
        if (isMouseReleased == true){ sceneLoader = 2;}
        if (mousePressed == true) {
          fill(10);
          text("Options",960,700);
          fill(255);
       
        }
      }
      else {text("Options",960,700);}
           if(mouseX > 920 && mouseX < 1000 &&mouseY > 780 && mouseY < 830){
        fill(100);
        text("Exit",960,800);
        fill(255);
        if (isMouseReleased == true){ exit();}
        if (mousePressed == true) {
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
      text("Input Title Here",960,150);
      textFont(font,60);
           if(mouseX > 915 && mouseX < 1000 &&mouseY > 780 && mouseY < 830){
        fill(100);
        text("Back",960,800);
        fill(255);
        if (isMouseReleased == true){ sceneLoader = 0;}
        if (mousePressed == true) {
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
      text("Input Title Here",960,150);
      textFont(font,60);
      text("Music",960,600);
      text("SFX",960,400);
           if(mouseX > 915 && mouseX < 1000 &&mouseY > 780 && mouseY < 830){
        fill(100);
        text("Back",960,800);
        fill(255);
        if (isMouseReleased == true){ sceneLoader = 0;}
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
  image(bed,0,0);
  }
}

void mouseReleased() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
