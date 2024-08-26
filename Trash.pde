class Trash extends Object {
  PVector direction;
  int value;

  public Trash(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY, int value) {
    super(x, y, sprite, sizeX, sizeY);
    this.direction = direction;
    this.value = value;
  }

  public void tick(float deltaTime) {
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;
  }
}
