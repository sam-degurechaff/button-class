class button {
  int x, y, w, h;
  boolean clicked;
  color hilight, normal;
  String text;
  button(String t, int _x, int_y, int _w, color norm) {
    x=_x;
    y=_y;
    w=_w;
    h=_h;
    text=t;
    highlight=high;
    nromal=norm;
    clicked=false;
  }
  void show() {
    rectMode(CENTER);
    if (mouseX>x-w/2&&mouseX<x+w/2&&mouseY>y-h/2&&mouseY<y+h/2) {
      fill(hilight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);
  }
  textAlign(CENTER,CENTER);if(mouseX>x-w/2&&mouseX<x+w/2&&
}
