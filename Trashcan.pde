class Trashcan extends Object {
  private PVector direction;

  public Trashcan(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY,int value) {
    super(x, y, sprite, sizeX, sizeY, value);
    this.direction = direction;
  }

  public void tick(float deltaTime) {
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;

    if (this.x-this.sizeX/2<0) this.x = 0 + this.sizeX/2;
    if (this.x+this.sizeX/2>width) this.x = width - this.sizeX/2;
  }

  public void setDirection(PVector moveDir) {
    this.direction = moveDir;
  }

  public ArrayList<Object> checkCollisions(ArrayList<Object> objects) {
    ArrayList<Object> collisions = new ArrayList<Object>();

    for (Object object : objects) {
      // Check if objects is trash
      if (object.getClass() == Trash.class || object.getClass() == Paper.class) {
        // Check if object is colliding
        if (object.x >= this.x - this.sizeX/2 && object.x <= this.x + this.sizeX/2 && object.y >= this.y - this.sizeY/2 && object.y <= this.y + this.sizeY/2) {
          collisions.add(object);
          
        }
      }
    }

    return collisions;
  }
}
