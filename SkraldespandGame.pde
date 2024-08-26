float deltaTime = 0.0;
long lastFrame;
ArrayList<Object> objects = new ArrayList<Object>();

void setup(){
println("Hello world");

  lastFrame = millis();
}

void draw(){
  // Calculate deltaTime
  long time = millis();
  deltaTime = (time-lastFrame)/1000.0;
  lastFrame = time;

  // Tick and display all objects
  for(Object o : objects){
    o.tick(deltaTime);
    o.display();
  }


}
