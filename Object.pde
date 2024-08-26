public class Object {
  private final PImage sprite;
  float x, y, sizeX, sizeY;
  int value;

  public Object(float x, float y, PImage sprite, float sizeX, float sizeY, int value) {
    this.x = x;
    this.y = y;
    this.sprite = sprite;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.value = value;
  }

  public void tick(float deltaTime) {
  }

  public void display() {
    image(this.sprite, this.x-sizeX/2, this.y-sizeY/2, this.sizeX, this.sizeY);
  }
}
