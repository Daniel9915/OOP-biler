Car[] allCars = new Car[1000];
int carNum = 0; 

boolean firstClick = false;

void setup() {
  rectMode(CENTER);
  textAlign(CENTER);
  size(600,600);
}

void draw() {
  clear();
  background(255);

  if(firstClick == false) {
    fill(0);
    text("Klik på en af halvdelene af skærmen i den lodrette retning", width/2, height/2);
  }

  showCars();
}

void mousePressed() {  
  if(mouseY > height/2) {
    addCarLeft();
  }
  
  if(mouseY < height/2) {
    addCarRight();
  }
  
  if(firstClick == false) {
    firstClick = true;
  }
}

void addCarRight() {
  int r = int(random(0, 256));
  int g = int(random(0, 256));
  int b = int(random(0, 256));
  allCars[carNum] = new Car("right", r, g, b);
  carNum++;
}

void addCarLeft() {
  int r = int(random(0, 256));
  int g = int(random(0, 256));
  int b = int(random(0, 256));
  allCars[carNum] = new Car("left", r, g, b);
  carNum++;
}

void showCars() {
  for(int i = 0; i < allCars.length; i++) {
    if(allCars[i] != null) {
      allCars[i].display();
      allCars[i].drive();
    }
  }
}
