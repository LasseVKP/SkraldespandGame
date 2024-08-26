void keyPressed(){
  if (keyCode == 39){
    xsmove = 500;
  }else if (keyCode == 37){
    xsmove = -500;
  }
}
void keyReleased(){
 if (keyCode == 39 || keyCode == 37) {
  xsmove = 0 ;
 }
}
