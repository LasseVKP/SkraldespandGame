
float deltaTime = 0.0;
long lastFrame;
ArrayList<Object> objects = new ArrayList<Object>();

void setup(){
String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);

  lastFrame = millis();
}

void draw(){
  if ( myPort.available() > 0) 
  {  // If data is available,
  val = myPort.readStringUntil('\n');         // read it and store it in val
  } 
  
println(val); //print it out in the console
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
