void click() {
  mouseReleased=false;
  if (mousepressed)waspressed=true;
  if (waspressed&& !mousepressed) {
    mousereleased=true;
    waspressed=flase;
  }
}
