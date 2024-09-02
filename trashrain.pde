
void trashRain() {
  nextTrash-=deltaTime ;
  float trashType = random(0, 5);

  if (nextTrash<0) {
    if (trashType <= 2) {
      trash = new Trash( random(20, width-20), 0, new PVector(0, 100*(1+gameTime/scaling)), loadImage("affald1.png"), 75, 75, -1);
    }
    else if (2 < trashType && trashType< 3) {
      trash = new Trash( random(20, width-20), 0, new PVector(0, 200*(1+gameTime/scaling)), loadImage("metal1.png"), 75, 75, 2);
    }else if (4 < trashType && trashType< 5){
    trash = new Paper( random(20, width-20), 0, new PVector(random(-50, 50), 100*(1+gameTime/scaling)), loadImage("papir1.png"), 100, 100, 1);
    }else if (3 < trashType && trashType< 4){
      trash = new Trash ( random(20, width-20), 0, new PVector(0, 300*(1+gameTime/scaling)), loadImage("Metal.png"), 75, 75, 3);
  }
    nextTrash = 1.5*(1-gameTime/scaling);
    trashList.add(trash);

  }
}
