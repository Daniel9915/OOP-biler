Car[] allCars = new Car[1000];
int carNum = 0; 

void setup() {
  rectMode(CENTER);
  textAlign(CENTER);
  size(600,600);
  fill(0);
  text("Klik på en af halvdelene af skærmen i den lodrette retning", width/2, height/2);
}

void draw() {
  clear();
  background(255);

  showCars();
}

void mousePressed() {
  clear();
  background(255);
  
  if(mouseY > height/2) {
    addCarLeft();
  }
  
  if(mouseY < height/2) {
    addCarRight();
  }
}

void addCarRight() {
  allCars[carNum] = new Car("right");
  carNum++;
}

void addCarLeft() {
  allCars[carNum] = new Car("left");
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
