class Car{
  
  //Data
  Wheel wheels = new Wheel();
  float x = 10;
  float y = 200;
  float speed;
  
  int h = 20;
  int w = 40;
  color c;
  
  //Constructor
  Car(float tempSpeed, color tempColor){
    speed = tempSpeed;
    c = tempColor;
  }
  
  
  //Functionality
  
  void display(){
    wheels.display(x,y,w,h, speed);
    
    fill(c);
    rect(x,y,w,h);
    
  }
  
  void drive(){
    x = x + speed;
    
  }
  
}
