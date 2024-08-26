class Paper extends Trash {

  public Paper(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY, int value) {
    super(x, y, direction, sprite, sizeX, sizeY, value);
  }

  public void tick(float deltaTime) {
    this.direction.y += random(-1, 1);
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;
    
  }
}
