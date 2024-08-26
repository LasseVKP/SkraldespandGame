void keyPressed() {
  if (keyCode == 39) {
    rightArrow = true;
  } else if (keyCode == 37) {
    leftArrow = true;
  }
}
void keyReleased() {
  if (keyCode == 39) {
    rightArrow = false;
  } else if (keyCode == 37) {
    leftArrow = false;
  }
}
