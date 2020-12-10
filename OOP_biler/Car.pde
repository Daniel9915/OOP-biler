class Car {

  float x;
  float y;
  float w = 50;
  float h = 25;
  float speed;

  float wheelW = 5;
  float wheelH = 5;

  float wheelTopLeftX;
  float wheelTopLeftY;
  
  float wheelTopRightX;
  float wheelTopRightY;
  
  float wheelBottomLeftX;
  float wheelBottomLeftY;
  
  float wheelBottomRightX;
  float wheelBottomRightY;
  
  Car(String direction) {
    if(direction == "left") {
      x = width;
      y = random(height/2, height);
      speed = -random(0, 11);
    }
    
    if(direction == "right") {
      x = 0;
      y = random(0, height/2);
      speed = random(0, 11);
    }
  }
  
  void display() {
    if(x >= width + w) {
      x = 0;
    }
    
    wheelTopLeftX = x-(w/4);
    wheelTopLeftY = y-(h/2);
    
    wheelTopRightX = x+(w/4);
    wheelTopRightY = y-(h/2);
    
    wheelBottomLeftX = x-(w/4);
    wheelBottomLeftY = y+(h/2);
    
    wheelBottomRightX = x+(w/4);
    wheelBottomRightY = y+(h/2);
    
    fill(0);
    rect(wheelTopLeftX, wheelTopLeftY, wheelW, wheelH);
    rect(wheelTopRightX, wheelTopRightY, wheelW, wheelW);
    rect(wheelBottomLeftX, wheelBottomLeftY, wheelW, wheelW);
    rect(wheelBottomRightX, wheelBottomRightY, wheelW, wheelW);
    
    fill(222);
    rect(x, y, w, h);
  }
  
  void drive() {
    x = x + speed;
  }
}
