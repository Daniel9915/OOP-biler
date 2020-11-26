Car car1 = new Car(6,color(69,69,69));

void setup() {
  rectMode(CENTER);
  size(600,600);
  car1.x = 100;
  car1.y = 200;

  
}

void draw() {
  clear();
  background(255);
  car1.display();
  car1.drive();
  
}
