class Trashcan implements Object {  
  float x;
  float y;
  private PVector direction;
  private PImage sprite;
  private float sizeX;
  private float sizeY;
  
  
  public Trashcan(float x, float y, PVector direction, PImage sprite, float sizeX, float sizeY){
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
    image(this.sprite, this.x-sizeX/2, this.y-sizeY/2, this.sizeX, this.sizeY);
  }
  
  public void setDirection(PVector moveDir) {this.direction = moveDir;}
  
}
