

int maxCars = 10000;
Car car[] = new Car[maxCars];
int carNumb;  //Number of cars made
boolean[] carIsMade = new boolean[maxCars];

void setup() {
  rectMode(CENTER);
  size(600,600);
  createCarClasses();
}

void draw() {
  clear();
  background(255);
  createCars();

}


void keyPressed(){
    if(key=='A'||key=='a'){
      carNumb++;
      carIsMade[carNumb] = true;
    }
}

void createCars(){
  for(int i = 0; i < car.length; i++){ // Draws all cars currently made
    if(carIsMade[i] == true){
      car[i].display();
      car[i].drive();
    }
  }
}

void createCarClasses(){              //Creates objects for all cars
  for(int i=0; i<car.length; i++){
    car[i] = new Car(5,color(50,random(200,255),random(200,255))); // speed, color
  }
}
