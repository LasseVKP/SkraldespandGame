
void trashRain(){
nextTrash-=deltaTime ;

if (nextTrash<0){
trash = new Trash( random(20,width-20), 0, new PVector(0,50), loadImage("affald1.png"),25 ,25);
objects.add(trash);
nextTrash = 2.5;
}





} 
  
