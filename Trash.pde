class Trash extends Object {  
  private PVector direction;
  
  public Trash(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY){
    super(x,y, sprite, sizeX, sizeY);
    this.direction = direction;
  }
  
  public void tick(float deltaTime){
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;
  }
  
}
