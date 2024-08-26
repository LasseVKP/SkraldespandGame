class Trash implements Tickable, Displayable{  
  float x;
  float y;
  private PVector direction;
  private PImage sprite;
  private float sizeX;
  private float sizeY;
  
  
  public Trash(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY){
    this.x = x;
    this.y = y;
    this.direction = direction;
    this.sprite = sprite;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    
  }
  
  public void tick(float deltaTime){
    this.x += this.direction.x * deltaTime;
    this.y += this.direction.y * deltaTime;
  }
  
  public void display(){
    
  }
  
}
