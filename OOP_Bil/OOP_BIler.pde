bil redCar = new bil(100, 100, 3, color(255,0,0)); // x y h w speed c
bil greenCar = new bil(100, 300, 6, color(0,255,0)); // x y h w speed c
bil blueCar = new bil(100, 500, 1, color(0,0,255)); // x y h w speed c
bil yellowCar = new bil(100, 700, 10, color(255,255,0)); // x y h w speed c

void setup(){
  ellipseMode(CENTER);
  rectMode(CENTER);
  size(800,800);  
}


void draw(){
  clear();
  redCar.display();
  redCar.drive();
  greenCar.display();
  greenCar.drive();
  blueCar.display();
  blueCar.drive();
  yellowCar.display();
  yellowCar.drive();

}
