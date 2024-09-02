float deltaTime = 0.0;
long lastFrame;
ArrayList<Trash> trashList = new ArrayList<Trash>();
Trashcan trashcan;
Trash trash;
float xMovement;
float nextTrash = 2.5;
int score1 = 0;
int health = 3;
boolean game = false;
float gameTime;
float scaling = 150;
int nextLife;

// Kode til keyboard
boolean rightArrow = false;
boolean leftArrow = false;

void setup() {
  if (Serial.list().length > 0 && (Serial.list()[0].contains("/dev/cu.usbserial") || Serial.list()[0].contains("COM") ))
  {
    String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
    myPort = new Serial(this, portName, 115200);
  } else {
    println("ERROR: Could not connect to arduino");
  }

  size(1080,1080);
    
  gameSetup();
}

void draw() {
  if(game){
  // Calculate deltaTime
  long time = millis();
  deltaTime = (time-lastFrame)/1000.0;
  lastFrame = time;
  gameTime += deltaTime;

  background(255);

  trashRain();
  if (myPort != null && myPort.available() > 0)
  {  // If data is available,
    //println(myPort.readStringUntil('\n'));
    val = parseFloat(myPort.readStringUntil('\n'))-360;         // read it and store it in val
    myPort.clear();
    println(val); //print it out in the console
    xMovement = val*60;
  } else {
    xMovement = (int(rightArrow) - int(leftArrow))*500;
  }

  

  // Set move direction (Skal ændres til retningen den skal bevæges i)
  trashcan.setDirection(new PVector(xMovement, 0));

  // Tick and display all objects
  for (Trash t : trashList) {
    t.tick(deltaTime);
    t.display();
  }

  // Tick and display trashcan
  trashcan.tick(deltaTime);
  trashcan.display();

  // Check collisions
  for (Trash t : trashcan.checkCollisions(trashList)) {
    trashList.remove(t);
    
    if(t.value < 0){
      health -= 1;
      println(health);
      if(health == 0){
        game = false;
      }
    } else {
      score1 += t.value;
      if(score1 >= nextLife){
        health++;
        nextLife += 100;
      }
    }
    
  }
  fill(0);
rect(0,height-100,width,100);
  textSize(100);
  fill(255);
  text(score1, 10, height-10);
  fill(color(255, 0, 0));
  text(health, width-60, height-10);
  }
}

void gameSetup(){
  game = true;
  trashList = new ArrayList<Trash>();
  trashcan = new Trashcan(width/2, height-150, new PVector(0, 0), loadImage("Skraldespand.png"), 150, 150);
  lastFrame = millis();
  nextTrash = 1.5;
  score1 = 0;
  health = 3;
  gameTime = 0;
  nextLife = 100;
  
}
