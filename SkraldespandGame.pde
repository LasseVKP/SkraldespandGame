float deltaTime = 0.0;
long lastFrame;
ArrayList<Object> objects = new ArrayList<Object>();
Trashcan trashcan;
int xsmove;
int ysmove;

void setup(){
  if(Serial.list().length > 0 && (Serial.list()[0].contains("/dev/cu.usbserial") || Serial.list()[0].contains("COM") ))
  {
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  } else {
    println("ERROR: Could not connect to arduino");
  }
  
  size(500, 500);


  trashcan = new Trashcan(width/2, height-100, new PVector(0,0), loadImage("trashcan.png"), 50, 50);

  objects.add(new Trash(100, 100, new PVector(0,50), loadImage("trashcan.png"), 50, 50));
  

  lastFrame = millis();
}

void draw(){
  // Calculate deltaTime
  long time = millis();
  deltaTime = (time-lastFrame)/1000.0;
  lastFrame = time;
  
  background(255);
    
    if (myPort != null && myPort.available() > 0) 
    {  // If data is available,
      val = myPort.readStringUntil('\n');         // read it and store it in val
      println(val); //print it out in the console
    } 
  

  // Set move direction (Skal ændres til retningen den skal bevæges i)
  trashcan.setDirection(new PVector(xsmove,ysmove));

  // Tick and display all objects
  for(Object o : objects){
    o.tick(deltaTime);
    o.display();
  }
  
  // Tick and display trashcan
  trashcan.tick(deltaTime);
  trashcan.display();

  // Check collisions
  for(Object object : trashcan.checkCollisions(objects)){
    objects.remove(object);
  }
}
