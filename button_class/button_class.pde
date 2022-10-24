color blue=#28E7ED;
color green=#cef255;
color pink=#f76ddc;
color yellow=#fff387;
color black=#000000;
color white=#ffffff;

boolean mouseReleased;
boolean waspressed;
boolean touchingmouse;
void setup() {
  size(600, 600);
}

void draw() {
  click();
  background(bkg);
  int i=0;
  while (i<4) {
    mybuttons[i].show();
    if (mybutons[i].clicked) {
      bkg=mybuttons[i].normal;
    }
    i++;
  }
