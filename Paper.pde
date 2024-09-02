class Paper extends Trash {
  private boolean moveLeft;
  private float changeDirection;
  
  public Paper(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY, int value) {
    super(x, y, direction, sprite, sizeX, sizeY, value);
    if(direction.x < 0) moveLeft = true;
    changeDirection = random(0, 3);
  }

  public void tick(float deltaTime) {
    
    changeDirection -= deltaTime;
    if(changeDirection < 0){
      moveLeft = !moveLeft;
      changeDirection = random(0, 2);
      this.direction.x = (int(moveLeft)*2-1)*random(10,30);
    }
    
    this.direction.x += (int(moveLeft)*2-1)*random(0,3);
    
    
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;
    
    if (this.x-this.sizeX/2<0+border) this.x = 0 + border + this.sizeX/2;
    if (this.x+this.sizeX/2>width-border) this.x = width-border - this.sizeX/2;
    
  }
}
