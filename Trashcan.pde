class Trashcan extends Object {
  private PVector direction;

  public Trashcan(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY) {
    super(x, y, sprite, sizeX, sizeY);
    this.direction = direction;
  }

  public void tick(float deltaTime) {
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;

    if (this.x-this.sizeX/2<0+border) this.x = 0 + border + this.sizeX/2;
    if (this.x+this.sizeX/2>width-border) this.x = width-border - this.sizeX/2;
  }

  public void setDirection(PVector moveDir) {
    this.direction = moveDir;
  }

  public ArrayList<Trash> checkCollisions(ArrayList<Trash> objects) {
    ArrayList<Trash> collisions = new ArrayList<Trash>();

    for (Trash object : objects) {
        // Check if object is colliding
        if (object.x >= this.x - this.sizeX/2 && object.x <= this.x + this.sizeX/2 && object.y >= this.y - this.sizeY/2 && object.y <= this.y + this.sizeY/2) {
          collisions.add(object);
      }
    }

    return collisions;
  }
}
