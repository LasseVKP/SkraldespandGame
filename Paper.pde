class Paper extends Trash {

  public Paper(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY, int value) {
    super(x, y, direction, sprite, sizeX, sizeY, value);
  }

  public void tick(float deltaTime) {
    this.direction.x += random(-2, 2);
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;
    
  }
}
