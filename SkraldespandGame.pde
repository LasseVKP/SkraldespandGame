
float deltaTime = 0.0;
long lastFrame;

void setup(){
String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);

  lastFrame = millis();
}

void draw(){
  long time = millis();
  deltaTime = (time-lastFrame)/1000.0;
  lastFrame = time;


}
