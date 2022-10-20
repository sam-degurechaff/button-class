class button {
  int x, y, w, h, high;
  boolean clicked;
  color highlight, normal;
  String text;
  button(String t, int _x, int _y, int _w, int _h, color norm) {
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
    
   //drawRect();
   //drawLable();
   //checkForClick();
    rectMode(CENTER);
    if (toutchingmouse()) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);

    textAlign(CENTER, CENTER);
    if (toutchingmouse()) {
      clicked=true;
    } else {
      clicked=false;
    }
  }
}
