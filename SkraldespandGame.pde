float deltaTime = 0.0;
long lastFrame;

void setup(){
println("Hello world");

  lastFrame = millis();
}

void draw(){
  long time = millis();
  deltaTime = (time-lastFrame)/1000.0;
  lastFrame = time;


}
