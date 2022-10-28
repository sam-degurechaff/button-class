class button {
  int x, y, w, h, high;
  boolean clicked;
  color highlight, normal;
  String text;
  PImage img;
  img=loadImage("frame_0_delay-0.03s.gif");
  button(String t, int _x, int _y, int _w, int _h, color norm,color high) {
    x=_x;
    y=_y;
    w=_w;
    h=_h;
    text=t;
    highlight=high;
    normal=norm;
    clicked=false;
  }

  boolean toutchingmouse() {
    return mouseX>x-w/2&&mouseX<x+w/2&&mouseY>y-h/2&&mouseY<y+h/2;
  }
  void show() {
    drawbutton();
    drawlable();
    checkforclick();

    //    //drawRect();
    //    //drawLable();
    //    //checkForClick();
    //    rectMode(CENTER);
    //    if (toutchingmouse()) {
    //      fill(highlight);
    //    } else {
    //      fill(normal);
    //    }
    //    stroke(0);
    //    strokeWeight(4);
    //    rect(x, y, w, h, 30);

    //    textAlign(CENTER, CENTER);
    //    if (toutchingmouse()) {
    //      clicked=true;
    //    } else {
    //      clicked=false;
    //    }
  }
  void drawbutton() {
    rectMode(CENTER);
    imageMode(CENTER);
    if (touchingmouse) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);
  }
  void drawlable() {
    rectMode(CENTER);
    imageMode(CENTER);
    if (touchingmouse) {
      fill(highlight);
    } else {
      fill(normal);
    }
    if (img==null) {
      textSize(w/4);
      text(text, x, y);
    } else {
      image(img, x, y, w, h);
    }
  }
  void checkforclick() {
    if (mouseReleased&&touchingmouse) {
      clicked=true;
    } else {
      clicked=false;
    }
  }
}
