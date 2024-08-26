
void trashRain() {
  nextTrash-=deltaTime ;
  float trashType = random(0, 5);


  if (nextTrash<0) {
    if (trashType <= 3) {
      trash = new Trash( random(20, width-20), 0, new PVector(0, 100), loadImage("affald1.png"), 25, 25);
    }
    else if (3 < trashType && trashType< 4) {
      trash = new Trash( random(20, width-20), 0, new PVector(0, 200), loadImage("metal1.png"), 35, 35);
    }else if (4 < trashType && trashType< 5){
    trash = new Trash( random(20, width-20), 0, new PVector(0, 100), loadImage("papir1.png"), 35, 35);
    }
    nextTrash = 1.5;
    objects.add(trash);
  }
}
