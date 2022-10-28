color blue=#28E7ED;
color green=#cef255;
color pink=#f76ddc;
color yellow=#fff387;
color black=#000000;
color white=#ffffff;
button[] mybuttons;
boolean mouseReleased;
boolean waspressed;
boolean touchingmouse;
color bkg;
void setup() {
  img=loadImage("frame_0_delay-0.03s.gif");
  
  size(600, 600);
  mybuttons=new button[4];
  mybuttons[0]=new button("blue", 200, 200, 400, 200, blue, green);
  mybuttons[1]=new button("green", 200, 400, 200, 150, green, yellow);
  mybuttons[2]=new button("green", 400, 400, 600, 150, white, yellow);
  mybuttons[3]=new button("green", 255, 300, 400, 350, black, yellow);
}

void draw() {
  click();
  background(bkg);
  int i=0;
  while (i<4) {
    mybuttons[i].show();
    if (mybuttons[i].clicked) {
      bkg=mybuttons[i].normal;
    }
    i++;
  }
}
