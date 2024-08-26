
void trashRain() {
  nextTrash-=deltaTime ;
  float trashType = random(0, 5);


  if (nextTrash<0) {
    if (trashType <= 3) {
      trash = new Trash( random(20, width-20), 0, new PVector(0, 100), loadImage("affald1.png"), 25, 25, -1);
    }
    else if (3 < trashType && trashType< 4) {
      trash = new Trash( random(20, width-20), 0, new PVector(0, 200), loadImage("metal1.png"), 35, 35, 3);
    }else if (4 < trashType && trashType< 5){
    trash = new Paper( random(20, width-20), 0, new PVector(random(-50, 50), 100), loadImage("papir1.png"), 35, 35, 3);
    }
    nextTrash = 0.01;
    trashList.add(trash);

  }
}
