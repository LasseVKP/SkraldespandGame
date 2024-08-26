class Paper extends Trash {

  public Paper(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY, int value) {
    super(x, y, direction, sprite, sizeX, sizeY, value);
  }

  public void tick(float deltaTime) {
    this.direction.x += random(-4, 4);
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;
    
    if (this.x-this.sizeX/2<0) this.x = 0 + this.sizeX/2;
    if (this.x+this.sizeX/2>width) this.x = width - this.sizeX/2;
    
  }
}
